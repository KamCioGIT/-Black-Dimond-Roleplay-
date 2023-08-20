
CacheHouses = {}
Garages = {}

local QBCore = exports['qb-core']:GetCoreObject()
local R = exports["0r-core"]:Get0RCore()

__init__ = function()

   if not Config.RealEstateJob then
      for k,v in pairs(Config.Houses) do
         data = MySQL.Sync.fetchAll("SELECT * FROM `s4-house` WHERE id = '"..k.."' ")

         if #data == 0 then 
            MySQL.Async.execute("INSERT INTO `s4-house` (id, owner, name, garage, friends, garageId, theme, extends, props) VALUES ('"..k.."', '"..Config.Houses_Template.owner.."', '"..Config.Houses_Template.name.."', '"..json.encode(Config.Houses_Template.garage).."', '"..json.encode(Config.Houses_Template.friends).."', '"..v.garageId.."',  '"..v.theme.."', '"..json.encode(Config.Houses_Template.extends).."', '"..json.encode(Config.Houses_Template.props).."')")
         end

         Wait(100)
      end
   end
   LoadHouses()
end


LoadHouses = function() 
   CacheHouses = {}
   houses = MySQL.Sync.fetchAll("SELECT * FROM `s4-house`")

   for k,v in pairs(houses) do

      if Config.RealEstateJob then
         local Apartment = Config.Aparts[v.apartTypeID]
         if Apartment then
            local house_inCoords = json.decode(v.house_in)
            local garage_inCoords = json.decode(v.garage_in)

            

            i = {
               dataid = v.id,
               name = v.name,
               price = v.price,
               coords = {      
               house_in = vector3(house_inCoords.x, house_inCoords.y, house_inCoords.z),
               house_out = Apartment.out,
               garage_in = vector3(garage_inCoords.x, garage_inCoords.y, garage_inCoords.z),
               garage_out = Apartment.garage,
               manage = Apartment.manage,
               stash = Apartment.stash,
               wardrobe = Apartment.wardrobe,
               garage_out_heading = Apartment.garage_out_heading,
               },
               owner = v.owner,
               friends = json.decode(v.friends),
               garage =  json.decode(v.garage),
               garage_stock = 12,
               theme = v.theme,
               garageId = v.garageId,
               extends = json.decode(v.extends),
               props = json.decode(v.props),
               prop = v.prop,
               alarm = v.alarm,
               info =  Config.Aparts[v.apartTypeID],
               img = v.img
            }

         end
      else
         i = {
            name = v.name,
            price = Config.Houses[k].price,
            coords = {      
              house_in = Config.Houses[k].coords.house_in,
              house_out = Config.Houses[k].coords.house_out,
              garage_in = Config.Houses[k].coords.garage_in,
              garage_out = Config.Houses[k].coords.garage_out,
              stash = Config.Houses[k].coords.stash,
            },
            owner = v.owner,
            friends = json.decode(v.friends),
            garage =  json.decode(v.garage),
            garage_stock = Config.Houses[k].garage_stock,
            theme = v.theme,
            garageId = v.garageId,
            extends = json.decode(v.extends),
            props = json.decode(v.props),
            prop = v.prop,
            alarm = v.alarm
          }
      end

      table.insert(CacheHouses, i)
   end
end

if Config.RealEstateJob then
   QBCore.Functions.CreateCallback('s4-house:server:getHouses', function(source, cb)
      cb(CacheHouses)
   end)
end

RegisterNetEvent("s4-house:server:createhouse")
AddEventHandler("s4-house:server:createhouse", function(gelenData, houseinCoord, garageinCoord)
   local source = tonumber(source)
   local Player = QBCore.Functions.GetPlayer(source)


   local keys = {}
   for key in pairs(Config.Aparts) do
      table.insert(keys, key)
   end
   local Apartment = Config.Aparts[gelenData.houseType]

   if exports['qb-management']:RemoveMoney(Player.PlayerData.job.name, Config.Aparts[gelenData.houseType].RealEstatePrice) then
  
      data = { 
         name = gelenData.name,
         price = gelenData.price,
         coords = {      
            house_in = houseinCoord,
            house_out = Apartment.out,
            garage_in = garageinCoord,
            garage_out = Apartment.garage,
            manage = Apartment.manage,
            stash = Apartment.stash,
            wardrobe = Apartment.wardrobe,
            garage_out_heading = Apartment.garage_out_heading,
         },
         owner = "",
         friends = {},
         garage = {},
         garage_stock = 12,
         theme = gelenData.theme,
         extends = {},
         props = {},
         alarm = false,
         info =  Config.Aparts[gelenData.houseType],
         img = gelenData.houseImg or ""
      }
      MySQL.Async.execute("INSERT INTO `s4-house` (apartTypeID, garage_in, house_in, owner, name, price, garage, friends, theme, extends, props, img) VALUES ('".. gelenData.houseType .."', '".. json.encode(garageinCoord) .."', '".. json.encode(houseinCoord) .."', '"..data.owner.."', '"..data.name.."', '".. data.price .."' ,'"..json.encode(data.garage).."', '"..json.encode(data.friends).."',  '"..data.theme.."', '"..json.encode(data.extends).."', '"..json.encode(data.props).."', '".. data.img .."')")
      Wait(500)
      LoadHouses()
      Wait(500)
      TriggerClientEvent('s4-house:client:updateHouses', -1, CacheHouses)
      TriggerClientEvent("0r-core:onPlayerJoined", -1)
   else
      R.xPlayer(source).Notif("error", Config.Lang["society_notEnoughMoney"])
   end
end)

RegisterCommand("house_reload", function(source, args, rawCommand)
   print("Reload")
   CacheHouses = {}
   LoadHouses()
   TriggerClientEvent('s4-house:client:updateHouses', -1, CacheHouses)
end)

QBCore.Functions.CreateCallback('s4-house:server:tryBuy', function(source, cb, data)
   xPlayer = QBCore.Functions.GetPlayer(source)
   house = GetHouseFromId(tonumber(data.id))
   if xPlayer and house then 

      if data.type == "cash" and xPlayer.PlayerData.money["cash"] >= tonumber(house.price) and (house.owner == "" or house.owner == nil) then 
         result = CheckPayment(source, data.type, tonumber(house.price))
         if result == true then 
            if Config.RealEstateJob then
               exports['qb-management']:AddMoney("realestate", tonumber(house.price))
            end
            if data.dataid then
               BuyHouse(xPlayer.PlayerData.citizenid, tonumber(data.id), source, tonumber(data.dataid))
            else
               BuyHouse(xPlayer.PlayerData.citizenid, tonumber(data.id), source)
            end
         end
         return cb(result)
      end
 
      if data.type == "bank" and xPlayer.PlayerData.money["bank"] >= tonumber(house.price) then
         result = CheckPayment(source, data.type, tonumber(house.price))
         if result == true then 
            if Config.RealEstateJob then
               exports['qb-management']:AddMoney("realestate", tonumber(house.price))
            end
            if data.dataid then
               BuyHouse(xPlayer.PlayerData.citizenid, tonumber(data.id), source, tonumber(data.dataid))
            else
               BuyHouse(xPlayer.PlayerData.citizenid, tonumber(data.id), source)
            end
         end
         return cb(result)
      end
      
   end
end)


QBCore.Functions.CreateCallback('s4-house:server:canBuyProp', function(source, cb, prop)
   
   info = GetPropInfo(prop)
   xPlayer = QBCore.Functions.GetPlayer(source)
 
   if xPlayer and info then 
 
      if xPlayer.PlayerData.money["bank"] >= info.price then
         result = CheckPayment(source, "bank", info.price)
         -- if result == true and CheckAuth(data.id, xPlayer.PlayerData.citizenid) == true then 
         --    table.insert(CacheHouses[data.id].props, data)
         -- end
         return cb(result)
      end

   end
 
end)

QBCore.Functions.CreateCallback("s4-house:server:buyAlarm", function(source, cb, hid)
   local source = source
   local xPlayer = QBCore.Functions.GetPlayer(source)
   if xPlayer.PlayerData.money["bank"] >= Config.AlarmPrice then
      result = CheckPayment(source, "bank", Config.AlarmPrice)
      if result == true then 
         CacheHouses[hid].alarm = true
         bool_val = CacheHouses[hid].alarm and 1 or 0
         if not Config.RealEstateJob then
            MySQL.Async.execute("UPDATE `s4-house` SET alarm = '"..bool_val.."' WHERE id = '"..hid.."'  ")
         else
            MySQL.Async.execute("UPDATE `s4-house` SET alarm = '"..bool_val.."' WHERE id = '"..CacheHouses[hid].dataid.."'  ")
         end
         TriggerClientEvent('s4-house:client:updateHouses', -1, CacheHouses, hid, true)
         return cb(true)
      end
   end
   return cb(false)
end)

RegisterNetEvent("s4-house:server:removeAlarm")
AddEventHandler("s4-house:server:removeAlarm",function(hid)
   if CacheHouses[hid].alarm == true then 
      CacheHouses[hid].alarm = false
      bool_val = CacheHouses[hid].alarm and 1 or 0
      if not Config.RealEstateJob then
         MySQL.Async.execute("UPDATE `s4-house` SET alarm = '"..bool_val.."' WHERE id = '"..hid.."'  ")
      else
         MySQL.Async.execute("UPDATE `s4-house` SET alarm = '"..bool_val.."' WHERE id = '"..CacheHouses[hid].dataid.."'  ")
      end
      TriggerClientEvent('s4-house:client:updateHouses', -1, CacheHouses, hid, true)
   end
end)


RegisterNetEvent("s4-house:client:robbery")
AddEventHandler("s4-house:client:robbery",function(house)
   Config.DispacthFunction(house)
end)


RegisterNetEvent("s4-house:server:addNewProp")
AddEventHandler("s4-house:server:addNewProp",function(id, prop, coord, rot)
   if not Config.RealEstateJob then
      table.insert(CacheHouses[id].props, { prop = prop,  coord = coord, rot = rot })
      TriggerClientEvent('s4-house:client:updateHouses', source, CacheHouses, id, true)
      MySQL.Async.execute("UPDATE `s4-house` SET props = '"..json.encode(CacheHouses[id].props).."' WHERE id = '"..id.."'  ")
   else
      table.insert(CacheHouses[id].props, { prop = prop,  coord = coord, rot = rot })
      TriggerClientEvent('s4-house:client:updateHouses', source, CacheHouses, id, true)
      MySQL.Async.execute("UPDATE `s4-house` SET props = '"..json.encode(CacheHouses[id].props).."' WHERE id = '"..CacheHouses[id].dataid.."'  ")
   end
   
end)

RegisterNetEvent("s4-house:server:updateProps")
AddEventHandler("s4-house:server:updateProps",function(id, list)
   if not Config.RealEstateJob then
      CacheHouses[id].props = list
      TriggerClientEvent('s4-house:client:updateHouses', source, CacheHouses, id, true)
      MySQL.Async.execute("UPDATE `s4-house` SET props = '"..json.encode(CacheHouses[id].props).."' WHERE id = '"..id.."'  ")
   else
      CacheHouses[id].props = list
      TriggerClientEvent('s4-house:client:updateHouses', source, CacheHouses, id, true)
      MySQL.Async.execute("UPDATE `s4-house` SET props = '"..json.encode(CacheHouses[id].props).."' WHERE id = '"..CacheHouses[id].dataid.."'  ")
   end
end)

RegisterNetEvent("s4-house:server:sellProp")
AddEventHandler("s4-house:server:sellProp",function(prop)
   xPlayer = QBCore.Functions.GetPlayer(source)
   xPlayer.GiveAccountMoney('bank', GetPropInfo(prop.prop).price)
end)

GetPropInfo = function(prop)
   for k,v in pairs(Config.HouseItems) do
      if v.prop == prop then 
         return v
      end
   end
end


QBCore.Functions.CreateCallback('s4-house:server:GetPlayers', function(source, cb, data)
   local Players = {}
 
   for k, v in pairs(QBCore.Functions.GetPlayers()) do
      local xPlayer = QBCore.Functions.GetPlayer(v)
      Players[#Players+1] = { id = xPlayer.PlayerData.citizenid,  name = xPlayer.PlayerData.charinfo.firstname.." "..xPlayer.PlayerData.charinfo.lastname }
   end

   return cb(Players)
end)

RegisterNetEvent("s4-house:server:AddFriends")
AddEventHandler("s4-house:server:AddFriends",function(id, pid, name)
   for k,v in pairs(CacheHouses[id].friends) do
      if v.id == pid then 
        return
      end   
   end
   table.insert(CacheHouses[id].friends, { id = pid,  name = name })
   TriggerClientEvent('s4-house:client:updateHouses', source, CacheHouses)
   if not Config.RealEstateJob then
      MySQL.Async.execute("UPDATE `s4-house` SET friends = '"..json.encode(CacheHouses[id].friends).."' WHERE id = '"..id.."'  ")
   else
      MySQL.Async.execute("UPDATE `s4-house` SET friends = '"..json.encode(CacheHouses[id].friends).."' WHERE id = '"..CacheHouses[id].dataid.."'  ")
   end
end)

RegisterNetEvent("s4-house:server:RemoveFriends")
AddEventHandler("s4-house:server:RemoveFriends",function(id, pid, name)
   for k,v in pairs(CacheHouses[id].friends) do
      if v.id == pid then 
         table.remove(CacheHouses[id].friends, k) 
         break
      end   
   end
   TriggerClientEvent('s4-house:client:updateHouses', source, CacheHouses)
   if not Config.RealEstateJob then
      MySQL.Async.execute("UPDATE `s4-house` SET friends = '"..json.encode(CacheHouses[id].friends).."' WHERE id = '"..id.."'  ")
   else
      MySQL.Async.execute("UPDATE `s4-house` SET friends = '"..json.encode(CacheHouses[id].friends).."' WHERE id = '"..CacheHouses[id].dataid.."'  ")
   end
end)

RegisterNetEvent("s4-house:server:StreamFriends")
AddEventHandler("s4-house:server:StreamFriends",function() TriggerClientEvent('s4-house:client:updateHouses', -1, CacheHouses) end)

QBCore.Functions.CreateCallback('s4-house:server:trySell', function(source, cb, data)
   xPlayer = QBCore.Functions.GetPlayer(source)

   house = GetHouseFromId(tonumber(data.id))

   house.id = tonumber(data.id)

   if xPlayer and house then 
      
      if data.type == "cash" then 
         result = SellHouse(xPlayer, house)
         
         if result ~= false then 
            xPlayer.Functions.AddMoney("cash", tonumber(result))
         end
         return cb(result)
      end

      if data.type == "bank" then
         result = SellHouse(xPlayer, house)
         if result ~= false then 
            xPlayer.Functions.AddMoney('bank', tonumber(result))
         end
         return cb(result)
      end
      
   end
end)

QBCore.Functions.CreateCallback('s4-house:server:tryRob', function(source, cb)
   local xPlayer = QBCore.Functions.GetPlayer(source)
   if xPlayer.Functions.RemoveItem(Config.LockpickName) then
      cb(true)
   else
      cb(false)
   end
end)

BuyHouse = function(idf, id, src, dataid) 
   if dataid then
      CacheHouses[id].owner = idf
      MySQL.Async.execute('UPDATE `s4-house` SET owner = @idf WHERE id = @id', { ['@id'] = dataid, ['@idf'] = idf })
      TriggerClientEvent('s4-house:client:updateHouses', src, CacheHouses, id)
      TriggerClientEvent('s4-house:client:updateHouses', -1, CacheHouses, nil, true)
   else
      for k,v in pairs(CacheHouses) do
         if k == id then
            CacheHouses[k].owner = idf

            MySQL.Async.execute('UPDATE `s4-house` SET owner = @idf WHERE id = @id', { ['@id'] = id,   ['@idf'] = idf })
   
            --TriggerClientEvent('s4-house:client:updateHouses', src, CacheHouses, id)
            --TriggerClientEvent('s4-house:client:updateHouses', -1, CacheHouses, id)
            TriggerClientEvent('s4-house:client:updateHouses', src, CacheHouses, id)
            TriggerClientEvent('s4-house:client:updateHouses', -1, CacheHouses, nil, true)
         
            return
         end
      end
   end
end

SellHouse = function(xPlayer, house) 


   identifier = xPlayer.PlayerData.citizenid

   yuzde = house.price/100
   yuzde = yuzde * 10
   yuzde = house.price - yuzde

   for k,v in pairs(CacheHouses) do
      
      if k == house.id then
        
         if CacheHouses[k].owner == identifier then 
           
         CacheHouses[k].owner = ""
		   CacheHouses[k].garage = Config.Houses_Template.garage
		   CacheHouses[k].friends = Config.Houses_Template.friends
		   CacheHouses[k].extends = Config.Houses_Template.extends
         CacheHouses[k].props = Config.Houses_Template.props
		   if not Config.RealEstateJob then
            MySQL.Async.execute('UPDATE `s4-house` SET owner = @idf, garage = @garage, friends = @friends, extends = @extends, props = @props WHERE id = @id', {
 		           ['@id'] = house.id,
			   	  ['@idf'] = CacheHouses[k].owner,
			   	  ['@garage'] = json.encode(Config.Houses_Template.garage),
			   	  ['@friends'] = json.encode(Config.Houses_Template.friends),
			   	  ['@extends'] = json.encode(Config.Houses_Template.extends),
                 ['@props'] = json.encode(Config.Houses_Template.props),
		      })
         else
            MySQL.Async.execute('UPDATE `s4-house` SET owner = @idf, garage = @garage, friends = @friends, extends = @extends, props = @props WHERE id = @id', {
               ['@id'] = house.dataid,
               ['@idf'] = CacheHouses[k].owner,
               ['@garage'] = json.encode(Config.Houses_Template.garage),
               ['@friends'] = json.encode(Config.Houses_Template.friends),
               ['@extends'] = json.encode(Config.Houses_Template.extends),
               ['@props'] = json.encode(Config.Houses_Template.props),
            })
         end
		   TriggerClientEvent('s4-house:client:updateHouses', xPlayer.PlayerData.source, CacheHouses, house.id)
           TriggerClientEvent('s4-house:client:updateHouses', -1, CacheHouses, house.id, true)
           return tonumber(yuzde)
         end
      end
   end

   return false 
end

CheckPayment = function(source, type, count)

   local p = promise.new()
   local xPlayer = QBCore.Functions.GetPlayer(source)
   local cache
   local res = false
   
   if type == "cash" then 
      if xPlayer.PlayerData.money["cash"] >= count then
         xPlayer.Functions.RemoveMoney("cash", count)
         res = true
      end
   end

   if type == "bank" then 
      if xPlayer.PlayerData.money["bank"] >= count then
         xPlayer.Functions.RemoveMoney("bank", count)
         res = true
      end
   end

   p:resolve(res)
   return Citizen.Await(p)
end

 
AddEventHandler('s4-house:auth', function(cb, fileds)
   local fileds = fileds
   if not fileds.id then return end
   if not fileds.identifier then return end
   if CacheHouses[tonumber(fileds.id)].owner == fileds.identifier then 
      return cb(true)
   else 
      return cb(false)
   end
end)

AddEventHandler('s4-house:getinfo', function(cb, fileds)
   local fileds = fileds
   if not fileds.id then return end
   if not fileds.identifier then return end
   if CacheHouses[tonumber(fileds.id)].owner == fileds.identifier then 
      local house = CacheHouses[tonumber(fileds.id)]
      house.coord = { x = house.coords.house_in.x, y = house.coords.house_in.y }
      return cb(house)
   end
end)


RegisterNetEvent('s4-house:server:request')
AddEventHandler('s4-house:server:request', function()
   local source = source
 
   xPlayer = QBCore.Functions.GetPlayer(source)

   while not xPlayer do 
      xPlayer = QBCore.Functions.GetPlayer(source)
      Citizen.Wait(1)
   end
 
   if #CacheHouses == 0 then 
      TriggerClientEvent('s4-house:client:tryAgain', tonumber(source))
   else 
      TriggerClientEvent('s4-house:client:updateHouses', tonumber(source), CacheHouses)
   end
 
   if Config.UseMysqlForInterrior == true then 
      cache = {}
      cache = MySQL.Sync.fetchAll("SELECT * FROM `s4-house-cache` WHERE identifier = '"..xPlayer.PlayerData.citizenid.."'  ")
      if #cache ~= 0 then
         TriggerClientEvent("s4-house:client:cachehouse", source, tonumber(cache[1].hid))
      end
   end
    
end)


RegisterNetEvent("s4-house:server:entergarage")
AddEventHandler("s4-house:server:entergarage", function (id)
   Garages[id] = true
   TriggerClientEvent("stream:garage", -1, Garages)
end)

RegisterNetEvent("s4-house:server:outgaragex")
AddEventHandler("s4-house:server:outgaragex", function (id)
   Garages[id] = false
   TriggerClientEvent("stream:garage", -1, Garages)
end)


RegisterNetEvent("s4-house:server:setbucket")
AddEventHandler("s4-house:server:setbucket",function(id, rob)
   local source = source
   local rob = rob or false
   if not id then return end
   if id == 0 then return end

   xPlayer = QBCore.Functions.GetPlayer(source)

   while not xPlayer do 
      xPlayer = QBCore.Functions.GetPlayer(source)
      Citizen.Wait(1)
   end

   if not CacheHouses[id].bucket_id then 
      CacheHouses[id].bucket_id = id + 4000
   end

   SetPlayerRoutingBucket(source, CacheHouses[id].bucket_id)
   if rob == true then return end
   if Config.UseMysqlForInterrior == true then 
      cache = {}
      cache = MySQL.Sync.fetchAll("SELECT * FROM `s4-house-cache` WHERE identifier = '"..xPlayer.PlayerData.citizenid.."'  ")
      if #cache == 0 then
         MySQL.Async.execute("INSERT INTO `s4-house-cache` (hid, identifier) VALUES ('"..id.."', '"..xPlayer.PlayerData.citizenid.."')")
      else 
         MySQL.Async.execute("UPDATE `s4-house-cache` SET hid = '"..id.."' WHERE identifier = '"..xPlayer.PlayerData.citizenid.."'  ")
      end
   end

end)

RegisterNetEvent("s4-house:server:outbucket")
AddEventHandler("s4-house:server:outbucket", function()
   local source = source
   xPlayer = QBCore.Functions.GetPlayer(source)

   while not xPlayer do 
      xPlayer = QBCore.Functions.GetPlayer(source)
      Citizen.Wait(1)
   end

   SetPlayerRoutingBucket(source, 0)
   if Config.UseMysqlForInterrior == true then 
      MySQL.Async.execute("DELETE FROM `s4-house-cache` WHERE identifier = '"..xPlayer.PlayerData.citizenid.."' ")
   end
end)


RegisterNetEvent("s4-house:server:setTheme")
AddEventHandler("s4-house:server:setTheme",function(id, theme)
   local xPlayer = QBCore.Functions.GetPlayer(source)
   if CheckAuth(id, xPlayer.PlayerData.citizenid) == true then 
      CacheHouses[id].theme = theme
      TriggerClientEvent('s4-house:client:updateHouses', source, CacheHouses, id, true)
      -- TriggerClientEvent('s4-house:client:updateHouses', -1, CacheHouses, id, true)
      if not Config.RealEstateJob then
         MySQL.Async.execute("UPDATE `s4-house` SET theme = '"..theme.."' WHERE id = '"..id.."'  ")
      else
         MySQL.Async.execute("UPDATE `s4-house` SET theme = '"..theme.."' WHERE id = '"..CacheHouses[id].dataid.."'  ")
      end
   end
end)

RegisterNetEvent("s4-house:server:setGarage")
AddEventHandler("s4-house:server:setGarage",function(id, garaj)
   local xPlayer = QBCore.Functions.GetPlayer(source)
   if CheckAuth(id, xPlayer.PlayerData.citizenid) == true then 
      CacheHouses[id].garageId = garaj
      --- TriggerClientEvent('s4-house:client:updateHouses', source, CacheHouses, id, true)
      -- TriggerClientEvent('s4-house:client:updateHouses', -1, CacheHouses, id, true)
      if not Config.RealEstateJob then
         MySQL.Async.execute("UPDATE `s4-house` SET garageId = '"..garaj.."' WHERE id = '"..id.."'  ")
      else
         MySQL.Async.execute("UPDATE `s4-house` SET garageId = '"..garaj.."' WHERE id = '"..CacheHouses[id].dataid.."'  ")
      end
      TriggerClientEvent('s4-house:client:updateHouses', source, CacheHouses)
      TriggerClientEvent("0r-core:onPlayerJoined", source)
   end
end)


RegisterNetEvent("s4-house:server:setProp")
AddEventHandler("s4-house:server:setProp",function(id, prop)
   local xPlayer = QBCore.Functions.GetPlayer(source)
   if CheckAuth(id, xPlayer.PlayerData.citizenid) == true then 
      CacheHouses[id].prop = prop
      TriggerClientEvent('s4-house:client:updateHouses', -1, CacheHouses, id, true)
      if not Config.RealEstateJob then
         MySQL.Async.execute("UPDATE `s4-house` SET prop = '"..prop.."' WHERE id = '"..id.."'  ")
      else
         MySQL.Async.execute("UPDATE `s4-house` SET prop = '"..prop.."' WHERE id = '"..CacheHouses[id].dataid.."'  ")
      end
   end
end)


RegisterNetEvent("s4-house:server:setExtends")
AddEventHandler("s4-house:server:setExtends",function(id, data)
   local xPlayer = QBCore.Functions.GetPlayer(source)
   if CheckAuth(id, xPlayer.PlayerData.citizenid) == true then 
      table.insert(CacheHouses[id].extends, data)
      TriggerClientEvent('s4-house:client:updateHouses', -1, CacheHouses, id, true)
      if not Config.RealEstateJob then
         MySQL.Async.execute("UPDATE `s4-house` SET extends = '"..json.encode(CacheHouses[id].extends).."' WHERE id = '"..id.."'  ")
      else
         MySQL.Async.execute("UPDATE `s4-house` SET extends = '"..json.encode(CacheHouses[id].extends).."' WHERE id = '"..CacheHouses[id].dataid.."'  ")
      end
   end
end)




RegisterNetEvent("s4-house:server:SetName")
AddEventHandler("s4-house:server:SetName",function(id, name)
   local xPlayer = QBCore.Functions.GetPlayer(source)
   if CheckAuth(id, xPlayer.PlayerData.citizenid) == true then 
      CacheHouses[id].name = name
      TriggerClientEvent('s4-house:client:updateHouses', -1, CacheHouses, id, true)
      if not Config.RealEstateJob then
         MySQL.Async.execute("UPDATE `s4-house` SET name = '"..name.."' WHERE id = '"..id.."'  ")
      else
         MySQL.Async.execute("UPDATE `s4-house` SET name = '"..name.."' WHERE id = '"..CacheHouses[id].dataid.."'  ")
      end
   end
end)

RegisterNetEvent("s4-house:http:SetName")
AddEventHandler("s4-house:http:SetName", function(id, identifier, name)
   id = tonumber(id)
   if CheckAuth(id, identifier) == true then 
      CacheHouses[id].name = name
      TriggerClientEvent('s4-house:client:updateHouses', -1, CacheHouses, id, true)
      if not Config.RealEstateJob then
         MySQL.Async.execute("UPDATE `s4-house` SET name = '"..name.."' WHERE id = '"..id.."'  ")
      else
         MySQL.Async.execute("UPDATE `s4-house` SET name = '"..name.."' WHERE id = '"..CacheHouses[id].dataid.."'  ")
      end
   end
end)


RegisterNetEvent("s4-house:server:outgarage")
AddEventHandler("s4-house:server:outgarage",function(id, garage)
   local xPlayer = QBCore.Functions.GetPlayer(source)
   CacheHouses[id].garage = garage
   TriggerClientEvent('s4-house:client:updateHouses', -1, CacheHouses)
   if not Config.RealEstateJob then
      MySQL.Async.execute("UPDATE `s4-house` SET garage = '"..json.encode(CacheHouses[id].garage).."' WHERE id = '"..id.."'  ")
   else
      MySQL.Async.execute("UPDATE `s4-house` SET garage = '"..json.encode(CacheHouses[id].garage).."' WHERE id = '"..CacheHouses[id].dataid.."'  ")
   end
end)


RegisterNetEvent("s4-house:server:addGarage")
AddEventHandler("s4-house:server:addGarage",function(id, props, plate, model)
   local xPlayer = QBCore.Functions.GetPlayer(source)

   if GetGarageAvailable(id) == 0 then return end

   vehdata = MySQL.Sync.fetchAll("SELECT * FROM `player_vehicles` WHERE citizenid = '"..xPlayer.PlayerData.citizenid.."' AND plate = '"..plate.."'  ")
   
   if #vehdata == 0 then 
      
      return 
   end
    
   if #vehdata ~= 0 then 
         CacheHouses[id].garage[GetGarageAvailable(id)] = { id = GetGarageAvailable(id), props = props, plate = plate, model = model }
         TriggerClientEvent('s4-house:client:updateHouses', -1, CacheHouses)
         if not Config.RealEstateJob then
            MySQL.Async.execute("UPDATE `s4-house` SET garage = '"..json.encode(CacheHouses[id].garage).."' WHERE id = '"..id.."'  ")
         else
            MySQL.Async.execute("UPDATE `s4-house` SET garage = '"..json.encode(CacheHouses[id].garage).."' WHERE id = '"..CacheHouses[id].dataid.."'  ")
         end
   end
end)

 
R.RegisterServerCallback("s4-house:server:checkGarageSlot", function(source, cb, data)
   local source = source
   local xPlayer = QBCore.Functions.GetPlayer(source)

 

   local id = data.id
   local slot = data.slot
   local props = data.props
   local plate = data.plate
   local model = data.model

 

   if GetGarageAvailable(id) == 0 then 
      R.xPlayer(source).Notif("error", Config.Lang["no_garage_slot"])
      return cb(false) 
   end
 
  
   vehdata = MySQL.Sync.fetchAll(Config.OwnedVehiclesQuery(xPlayer.PlayerData.citizenid, plate))
  
   if #vehdata == 0 and Config.PutOnlyOwnedVehicleInGarage == true then 
      R.xPlayer(source).Notif("error", Config.Lang["not_your_veh"])
      return cb(false)
   end

   
   vehdata = MySQL.Sync.fetchAll("SELECT * FROM `player_vehicles` WHERE citizenid = '"..xPlayer.PlayerData.citizenid.."' AND plate = '"..plate.."'  ")
    
   CacheHouses[id].garage[slot] = { id = slot, props = props, plate = plate, model = model }
   
   TriggerClientEvent('s4-house:client:updateHouses', -1, CacheHouses)
   if not Config.RealEstateJob then
      MySQL.Async.execute("UPDATE `s4-house` SET garage = '"..json.encode(CacheHouses[id].garage).."' WHERE id = '"..id.."'  ")
   else
      MySQL.Async.execute("UPDATE `s4-house` SET garage = '"..json.encode(CacheHouses[id].garage).."' WHERE id = '"..CacheHouses[id].dataid.."'  ")
   end
    
   TriggerClientEvent('s4-house:client:switch', source, id, "ginv_d")
   
  
   return cb(true)

end)




RegisterNetEvent("s4-house:server:addGarageSlot")
AddEventHandler("s4-house:server:addGarageSlot",function(id, slot, props, plate, model)
   local source = source
   local xPlayer = QBCore.Functions.GetPlayer(source)
 
   if GetGarageAvailable(id) == 0 then return end
   

   vehdata = MySQL.Sync.fetchAll("SELECT * FROM `player_vehicles` WHERE citizenid = '"..xPlayer.PlayerData.citizenid.."' AND plate = '"..plate.."'  ")
 
   if #vehdata == 0 then 
      R.xPlayer(source).Notif("error", Config.Lang["not_your_veh"])
      return 
   end
   if #vehdata ~= 0 then 
      vehdata = MySQL.Sync.fetchAll("SELECT * FROM `player_vehicles` WHERE citizenid = '"..xPlayer.PlayerData.citizenid.."' AND plate = '"..plate.."'  ")
      CacheHouses[id].garage[slot] = { id = slot, props = props, plate = plate, model = model }
      TriggerClientEvent('s4-house:client:updateHouses', -1, CacheHouses)
      if not Config.RealEstateJob then
         MySQL.Async.execute("UPDATE `s4-house` SET garage = '"..json.encode(CacheHouses[id].garage).."' WHERE id = '"..CacheHouses[id].dataid.."'  ")
      else

      end
      TriggerClientEvent('s4-house:client:switch', xPlayer.source, id, "ginv_d")
   end
end)

CheckAuth = function(id, idf)
   house = GetHouseFromId(tonumber(id))
   auth = false

   if house.owner == idf then 
      auth = true
   end

   for i,val in pairs(house.friends) do
      if val.id == idf then  
         auth = true
      end
   end

   return auth
end


GetHouseFromId = function(id)
   for k,v in pairs(CacheHouses) do
      if k == id then 
         return v
      end
   end
end

GetGarageAvailable = function(id) 
   house = GetHouseFromId(tonumber(id))
   
   for i=1, house.garage_stock  do
     if type(house.garage[i]) == "nil" then 
        return i
     end
   end

   return 0
end



Citizen.CreateThread(__init__)
