LocalOwner = "" -- do not change !!!!

Blips = {}

ShowBlip = true

ins_id = nil

LocalVehicles = {}

Garages = {}

is_in_garage = false

CurId = 0

im_robber = false

QBCore = exports['qb-core']:GetCoreObject()
local PlayerJob = QBCore.Functions.GetPlayerData().job

-- QBCore = nil
-- local PlayerJob = nil

-- Citizen.CreateThread(function()
--    while QBCore == nil do
--       TriggerEvent("QBCore:GetObject", function(obj) QBCore = obj end)    
--       Citizen.Wait(0)
--    end
--    PlayerJob = QBCore.Functions.GetPlayerData().job
-- end)

local S4 = exports["0r-core"]:Get0RCore()


local createHouseCoord = nil
local createGarageCoord = nil
local garageInteriorID = GetInteriorAtCoords(520.00000000, -2625.00000000, -39.69168000)

local function comma_value(amount)
   local formatted = amount
   while true do
      local k
      formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
      if (k == 0) then
         break
      end
   end
   return formatted
end

RegisterCommand(Config.BossMenuCommand, function(source, args)
   if not PlayerJob then
      PlayerJob = QBCore.Functions.GetPlayerData().job
   end
   if not args[1] then    
      if QBCore.Functions.GetPlayerData().job.isboss then
         local HireMenu = {}
         local checking = true
         local Money = 0
         QBCore.Functions.TriggerCallback('qb-bossmenu:getplayers', function(players)
            for _, v in pairs(players) do
               if v and v ~= PlayerId() then
                  HireMenu[#HireMenu + 1] = { Name = v.name, txt = "Citizen ID: " .. v.citizenid .. " - ID: " .. v.sourceplayer, Player = v }
               end
            end
            local EmployeesMenu = {}
            QBCore.Functions.TriggerCallback('qb-bossmenu:server:GetEmployees', function(cb)
               for _, v in pairs(cb) do
                  EmployeesMenu[#EmployeesMenu + 1] = { Name = v.name, txt = v.grade.name, Player = v}
               end
               QBCore.Functions.TriggerCallback('qb-bossmenu:server:GetAccount', function(cb)
                  Money = comma_value(cb)
                  checking = false
               end, PlayerJob.name) 
            end, PlayerJob.name)
            while checking do
               Wait(1)
            end
            SendNUIMessage({ action = "EmlakYonetimPanel", HireMenu = HireMenu, EmployeesMenu =  EmployeesMenu, Money = Money, Grades = QBCore.Shared.Jobs[PlayerJob.name].grades})

            SetNuiFocus(1,1)
         end)
      end
   else
      TriggerEvent("qb-bossmenu:client:OpenMenu")
   end
end)

Citizen.CreateThread(function()
   while QBCore.Functions.GetPlayerData().job == nil do
      Citizen.Wait(10)
   end
 
   QBCore.PlayerData = QBCore.Functions.GetPlayerData()
   PlayerJob = QBCore.Functions.GetPlayerData().job
    
   LocalOwner = QBCore.PlayerData.citizenid
 
   if Config.LoadIPLHouseOnStart then 
      FreezeEntityPosition(GetPlayerPed(-1), true)
   end
end)

RegisterCommand(Config.CreateHouseCommand, function()
   if PlayerJob.name == "realestate" then
      SendNUIMessage({ action = "createHouse", prices = Config.Aparts })
      TriggerScreenblurFadeIn(1)
      SetNuiFocus(1,1)
   end
end)


RegisterNetEvent('QBCore:Client:OnJobUptade')
AddEventHandler('QBCore:Client:OnJobUptade', function(job)
	QBCore.PlayerData.job = job
end)


Houses = {}
 
__init__ = function()

   TriggerScreenblurFadeOut(1)

   if not Config.RealEstateJob then
      Houses = Config.Houses
   else
      QBCore.Functions.TriggerCallback('s4-house:server:getHouses', function(x) Houses = x end)
   end

   Wait(1000)
    
   while Config.IHaveMultiChar == false do
      Citizen.Wait(1)	 
      if NetworkIsPlayerActive(PlayerId()) then
         TriggerServerEvent('s4-house:server:request')
         break
      end
   end

   DoScreenFadeIn(1000)

   __clear_ipl__()

   Wait(1000)
 
	if Config.LoadIPLHouseOnStart then 
	   theme = "modern"
      RequestIpl(Theme[theme].ipl)
      RefreshInterior(Theme[theme].interiorId)
	end

   FreezeEntityPosition(GetPlayerPed(-1), false)
end
 
loaded = false

RegisterNetEvent('s4-house:client:updateHouses')
AddEventHandler('s4-house:client:updateHouses', function(HouseData, id, ref) 
   SendNUIMessage({ action = "localidf", id = LocalOwner, HouseItems = { items = Config.HouseItems, category = Config.ItemCategory  }, alarm = Config.AlarmPrice  })
 
   for k,v in pairs(Houses) do
      for y,x in pairs(HouseData) do
         if k == y then 
            v.name = x.name
            v.owner = x.owner
            v.friends = x.friends
            v.garage = x.garage
            v.theme = x.theme
            v.props = x.props
            v.prop = x.prop
            v.alarm = x.alarm
            break
         end
      end
   end
    
   if id and not ref then 
      SendNUIMessage({ action = "update", house = GetHouseFromId(id), user = { cash = QBCore.Functions.GetPlayerData().money["cash"], bank =  QBCore.Functions.GetPlayerData().money["bank"] } })
   end
 
   if id and ref == true then 
      h = GetHouseFromId(id)
      dist = #(h.coords.manage - GetEntityCoords(PlayerPedId())) 
     
      if dist < 20.0 then 
       
         __clear_ipl__()
         if h.info.UsingTheme == true then 
            RequestIpl(h.info.Theme[h.theme].ipl)
            RefreshInterior(h.info.Theme[h.theme].interiorId)
         else
            interiorID = GetInteriorAtCoords(GetEntityCoords(PlayerPedId()))
            for k,v in pairs(h.info.props) do
               DisableInteriorProp(interiorID, v)
            end
            EnableInteriorProp(interiorID, house.prop)
            EnableInteriorProp(interiorID, h.theme)
            RefreshInterior(interiorID)
         end
         SetInteriorEntitySetColor(garageInteriorID, "tint", tonumber(h.garageId))
         RefreshInterior(garageInteriorID)
         -- RequestIpl(Theme[h.theme].ipl)
         -- RefreshInterior(Theme[h.theme].interiorId)
      end
   
   end 

 
   if id then 
      h = GetHouseFromId(id)
      for k,v in pairs(h.extends) do
         SetTable(v.url, v.i) 
      end

      for k,v in pairs(objlist) do
         if DoesEntityExist(v) then 
            DeleteEntity(v)
         end
      end
      evobjlist = {}

      for k,v in pairs(h.props) do
         addNewProp(v)
      end
   end
 
   if #Houses == #HouseData and loaded == false then 
      loaded = true
      Citizen.CreateThread(MainThread)
   end
   MakeBlips()
end)



rotz = 0
Rot = function()

   while 1>0 do 
   
      if rotz >= 360 then 
         rotz = 0
      end

      rotz = rotz + 1

      Citizen.Wait(1)
   end

end


Citizen.CreateThread(Rot)

MakeBlips  = function()
   ClearBlips()
   if ShowBlip == true then 
      for k, v in pairs(Houses) do
 
         col = nil
	   
	      info = CheckAuthInfo(k)
         
	      if info == "" then 
            col = 1
	      end
      
	      if info == "own" then 
            col = 2
	      end
      
	      if info == "friend" then 
            col = 3
	      end
         
         CreateBlips(v, v.coords.house_in, col)
      end
   end
end

oc = true
RegisterCommand("houseblip", function()
   oc = not oc
   TriggerEvent("s4-house:blip", oc)
end)

RegisterNetEvent("s4-house:blip")
AddEventHandler("s4-house:blip", function(ocalan)
   ShowBlip = ocalan
   MakeBlips()

   TriggerEvent("0r-core:notif", { type = "emoji", text = Config.Lang.blips ,  icon = "🏠" })

end)

MainThread = function()

   Wait(2000)

   while 1>0 do 
       sleepThread = 2500

       pCoords = GetEntityCoords(PlayerPedId())

       
       for k,v in pairs(Houses) do

           
            
            dist = #(v.coords.house_in - pCoords)
            if dist < 3.0 then 
                
               if v.owner == "" then 
                  DrawText3D(v.coords.house_in.x, v.coords.house_in.y, v.coords.house_in.z + 0.2, Config.Lang.sale(numWithCommas(v.price), v.name))
                  if dist < 1.40 and IsControlJustPressed(0, Config.OpenKey) then 
                       __house__(k, "No One")
                       Wait(1000)
                  end
			      elseif v.owner == LocalOwner then
                  DrawText3D(v.coords.house_in.x, v.coords.house_in.y, v.coords.house_in.z + 0.2, Config.Lang.your(v.name))
                  if dist < 1.40 and IsControlJustPressed(0, Config.OpenKey) then 
                     __house__(k, QBCore.PlayerData.charinfo.firstname.. " ".. QBCore.PlayerData.charinfo.lastname)
                     Wait(1000)
                  end
               else
                  friend = false
                  for i,val in pairs(v.friends) do
                      DrawText3D(v.coords.house_in.x, v.coords.house_in.y, v.coords.house_in.z + 0.2, Config.Lang.friend(v.name))
                      friend = true
                      if dist < 1.40 and IsControlJustPressed(0, Config.OpenKey) then 
                         __house__(k, "Your Friend")
                         Wait(1000)
                      end
                  end
                  if friend == false and Config.EnableRobbery == true then 
                     if not v.alarm then
                        DrawText3D(v.coords.house_in.x, v.coords.house_in.y, v.coords.house_in.z + 0.2, Config.Lang.house_rob)
                        if dist < 1.40 and IsControlJustPressed(0, Config.OpenKey) then 
                           robbery(k)
                           Wait(1000)
                        end
                     end       
                  end
               end
 
               sleepThread = 1
            end

            dist2 = #(v.coords.house_out - pCoords)

            if dist2 < 3.0 then 
               DrawText3D(v.coords.house_out.x, v.coords.house_out.y, v.coords.house_out.z + 0.2, Config.Lang.leave_house)
               if dist2 < 1.40 and IsControlJustPressed(0, Config.OpenKey) then 
                  TriggerServerEvent("s4-house:server:updateProps", CurId, evobjlist)
                  im_robber = false
                  DoScreenFadeOut(400)
                  Wait(500)
                  SetEntityCoords(GetPlayerPed(-1), GetHouseFromId(CurId).coords.house_in)
                  TriggerServerEvent("s4-house:server:outbucket")
                  TriggerServerEvent("s4-house:server:outgaragex", CurId)

                  Wait(500)
                  DoScreenFadeIn(1000)
                  Wait(1000)
                  ins_id = GetInteriorAtCoords(pCoords) 
                  for k,v in pairs(evobjlist) do
                     DeleteEntity(v.pid)
                  end
                  evobjlist = {}
               end
               sleepThread = 1
            end
			
			stash = #(v.coords.stash - pCoords)
			
			if stash < 3.0 then 
               DrawText3D(v.coords.stash.x, v.coords.stash.y, v.coords.stash.z + 0.2, Config.Lang.stash)
               
               if stash < 1.40 and IsControlJustPressed(0, Config.OpenKey) then 
                  hx = GetHouseFromId(tonumber(CurId))
                  if not hx.id then hx.id = CurId end
                  Config.StashFunction(CurId, hx)
                  Wait(1000)
               end
               sleepThread = 1
            end


            gdist = #(v.coords.garage_in - pCoords)
            
            if gdist < 5.0 then 
               
               veh = GetVehiclePedIsIn(PlayerPedId())
               if GetPedInVehicleSeat(veh, -1) == GetPlayerPed(-1)  then 
                  DrawText3D(v.coords.garage_in.x, v.coords.garage_in.y, v.coords.garage_in.z + 0.2, Config.Lang.enter_garage)
                  if gdist < 4.40 and IsControlJustPressed(0, Config.OpenKey) then 
                     __notif__(k, "ginv")
                     Wait(1000)
                  end
               else 
                  DrawText3D(v.coords.garage_in.x, v.coords.garage_in.y, v.coords.garage_in.z + 0.2, Config.Lang.enter_garage)
                  if gdist < 4.40 and IsControlJustPressed(0, Config.OpenKey) then 
                     __notif__(k, "gin")
                     Wait(1000)
                  end
               end
               sleepThread = 1
               
            end

            wdist =  #(v.coords.wardrobe - pCoords)
            if wdist < 3.0 then 
               DrawText3D(v.coords.wardrobe.x, v.coords.wardrobe.y, v.coords.wardrobe.z + 0.5, Config.Lang.wardrobe)
               if wdist < 1.50 and IsControlJustPressed(0, Config.OpenKey) then 
			   
                  if CurId == 0 then 
                     ESX.ShowNotification(Config.Lang.leave)
                  else 
                     Config.WardrobeFunction()
                  end
                  
                  Wait(1000)
               end
               sleepThread = 1
            end

            if v.owner == LocalOwner then
               mdist =  #(v.coords.manage - pCoords)
               if mdist < 2.0 then 
                  DrawMarker(29, v.coords.manage.x, v.coords.manage.y, v.coords.manage.z , 0.0, 0.0, 0.0, 0.0, 0.0, rotz + 0.1, 1.0, 1.0, 1.0, 50, 255, 51, 50, false, false, 2, nil, nil, false)
                  DrawText3D(v.coords.manage.x, v.coords.manage.y, v.coords.manage.z + 0.5, Config.Lang.manage)
                  if mdist < 2.50 and IsControlJustPressed(0, Config.OpenKey) then 
                  
			         if CurId == 0 then 
				        Config.Notify(Config.Lang.leave)
				     else 
				        __manage__(CurId)
				     end

                     Wait(1000)
                  end
                  sleepThread = 1
               end
            end



            g2dist = #(v.coords.garage_out - pCoords)
         

            if g2dist < 5.0 then 
               veh = GetVehiclePedIsIn(PlayerPedId())
               DrawText3D(v.coords.garage_out.x, v.coords.garage_out.y, v.coords.garage_out.z + 0.2, Config.Lang.out_garage)
               if g2dist < 2.50 and IsControlJustPressed(0, Config.OpenKey) then 
                  __notif__(CurId, "gout")
                  Wait(1000)
               end
            sleepThread = 1
         end
      end

      Citizen.Wait(sleepThread)
   end
end


robbery = function(id)

   QBCore.Functions.TriggerCallback('s4-house:server:tryRob', function(x) 
      if x then
         local house = GetHouseFromId(tonumber(id))
         __clear_ipl__()
         if house.info.UsingTheme == true then 
            RequestIpl(house.info.Theme[house.theme].ipl)
            RefreshInterior(house.info.Theme[house.theme].interiorId)
         else
            interiorID = GetInteriorAtCoords(GetEntityCoords(PlayerPedId()))
            for k,v in pairs(house.info.props) do
               DisableInteriorProp(interiorID, v)
            end
            EnableInteriorProp(interiorID, house.prop)
            EnableInteriorProp(interiorID, house.theme)
            RefreshInterior(interiorID)
         end
      
         SetInteriorEntitySetColor(garageInteriorID, "tint", tonumber(house.garageId))
         RefreshInterior(garageInteriorID)

         local alarmTriggered = false
         LoadAnim('veh@break_in@0h@p_m_one@')
         TaskPlayAnim(PlayerPedId(), "veh@break_in@0h@p_m_one@", "low_force_entry_ds", 1.0, 1.0, 1.0, 1, 0.0, 0, 0, 0)
         Citizen.Wait(2500)
         ClearPedTasks(PlayerPedId())
         if house.alarm == true then	
            TriggerServerEvent('s4-house:client:robbery', house)
            alarmTriggered = true
         else 
            if math.random(1, 10) == 5 then
               TriggerServerEvent('s4-house:client:robbery', house)
               alarmTriggered = true
            end
         end
      
         if alarmTriggered == true then 
         
         else
            im_robber = true
            CurId = id
            DoScreenFadeOut(400)
            Wait(500)
            __clear_ipl__()
            -- RequestIpl(Theme[house.theme].ipl)
            -- RefreshInterior(Theme[house.theme].interiorId)
         
            if house.info.UsingTheme == true then 
               RequestIpl(house.info.Theme[house.theme].ipl)
               RefreshInterior(house.info.Theme[house.theme].interiorId)
            else
               interiorID = GetInteriorAtCoords(GetEntityCoords(PlayerPedId()))
               for k,v in pairs(house.info.props) do
                  DisableInteriorProp(interiorID, v)
               end
               EnableInteriorProp(interiorID, house.prop)
               EnableInteriorProp(interiorID, house.theme)
               RefreshInterior(interiorID)
            end

            SetInteriorEntitySetColor(garageInteriorID, "tint", tonumber(house.garageId))
            RefreshInterior(garageInteriorID)
         
            Wait(500)
            for k,v in pairs(evobjlist) do
               DeleteEntity(v.pid)
            end
            evobjlist = {}
            for k,v in pairs(house.props) do
               addNewProp(v)
            end
            SetEntityCoords(GetPlayerPed(-1), house.coords.house_out)
            TriggerServerEvent("s4-house:server:setbucket", tonumber(house.id))
            Wait(500)
            DoScreenFadeIn(1000) 
         end
      else
         TriggerEvent("0r-core:notif", { type = "emoji", text = Config.Lang.nolockpick ,  icon = "💰" })         
      end
   end)
end
 
function LoadAnim(animDict)
	RequestAnimDict(animDict)
	while not HasAnimDictLoaded(animDict) do
		Citizen.Wait(10)
	end
end


RegisterNetEvent('s4-house:client:police_alert')
AddEventHandler('s4-house:client:police_alert', function(house)
   coords = house.coords.house_in
   police = false
   if QBCore.PlayerData.job.name == Config.PoliceJobName then 
      police = true
   end
	if police or house.owner == LocalOwner then 
		local alertablip = AddBlipForCoord(coords.x, coords.y, coords.z)
		SetBlipSprite(alertablip, 161)
		SetBlipScale(alertablip, 1.0)
		SetBlipColour(alertablip, 3)
		PulseBlip(alertablip)
      if police then 
         TriggerEvent("0r-core:notif", { type = "emoji", text = Config.Lang.police_alert ,  icon = "💰" })
      else 
         TriggerEvent("0r-core:notif", { type = "emoji", text = Config.Lang.alarm_alert ,  icon = "🚨" })
      end
		Wait(60000)
		RemoveBlip(alertablip)
	end
end)

__notif__ = function(id, type) 
   house = GetHouseFromId(tonumber(id))
   
   if CheckAuth(tonumber(id)) == true then 
      house.id = id
      SendNUIMessage({ action = "notif", house = house, type = type })
      SetNuiFocus(1,1)
   end
   
end


__house__ = function(id, x)
  
   house = GetHouseFromId(id)

   __clear_ipl__()
   if house.info.UsingTheme == true then 
      RequestIpl(house.info.Theme[house.theme].ipl)
      RefreshInterior(house.info.Theme[house.theme].interiorId)
   else
      interiorID = GetInteriorAtCoords(GetEntityCoords(PlayerPedId()))
      for k,v in pairs(house.info.props) do
         DisableInteriorProp(interiorID, v)
      end
      EnableInteriorProp(interiorID, house.prop)
      EnableInteriorProp(interiorID, house.theme)
      RefreshInterior(interiorID)
   end

   SetInteriorEntitySetColor(garageInteriorID, "tint", tonumber(house.garageId))
   RefreshInterior(garageInteriorID)

   house.id = id
   if not Config.RealEstateJob then
      house.who = x
   else
      house.who = house.name
   end
   --print(house.owner, LocalOwner)

   house.infoauth = CheckAuthInfo(id)
   house.numco = numWithCommas(house.price)
   house.curidf = LocalOwner
   CurId = id
   house.perc = Perc(house.price)
   SendNUIMessage({ action = "init", house = house, user = { cash = QBCore.Functions.GetPlayerData().money["cash"], bank =  QBCore.Functions.GetPlayerData().money["bank"] } })
   

   TriggerScreenblurFadeIn(1)
   SetNuiFocus(1,1)

end



__manage__ = function(id) 
   house = GetHouseFromId(id)
   if CheckAuth(id) == true then 
      house.id = id
      SendNUIMessage({ action = "manage", house = house, theme = Theme, house_obj = evobjlist, server = Config.HttpServer })
 
      SetNuiFocus(1,1)
      TriggerEvent("marker:close")
      
   end
end

RegisterNUICallback("setHouseCoord", function(data, cb)
   createHouseCoord = GetEntityCoords(PlayerPedId())
   TriggerScreenblurFadeOut(1)
   SetNuiFocus(0, 0)
end)

RegisterNUICallback("Stashh", function(data, cb)
   TriggerEvent("qb-bossmenu:client:Stash")
   TriggerScreenblurFadeOut(1)
   SetNuiFocus(0, 0)
end)

RegisterNUICallback("RecruitPerson", function(data, cb)
   if data.Id then
      TriggerServerEvent("qb-bossmenu:server:HireEmployee", tonumber(data.Id))
      Wait(100)
      exports['qb-menu']:closeMenu()
      exports['qb-core']:HideText()
   end
   SetNuiFocus(0, 0)
end)

RegisterNUICallback("ParaYatir", function(data, cb)
   if data.KacPara then 
      TriggerServerEvent("qb-bossmenu:server:depositMoney", tonumber(data.KacPara))
      Wait(100)
      exports['qb-menu']:closeMenu()
      exports['qb-core']:HideText()
   end
   SetNuiFocus(0, 0)
end)

RegisterNUICallback("ParaCek", function(data, cb)
   if data.KacPara then 
      TriggerServerEvent("qb-bossmenu:server:withdrawMoney", tonumber(data.KacPara))
      Wait(100)
      exports['qb-menu']:closeMenu()
      exports['qb-core']:HideText()
   end
   SetNuiFocus(0, 0)
end)

RegisterNUICallback("UpdateJob", function(data, cb)
   if data then
      TriggerServerEvent("qb-bossmenu:server:GradeUpdate", data)
      Wait(100)
      exports['qb-menu']:closeMenu()
      exports['qb-core']:HideText()
   end
   SetNuiFocus(0, 0)
end)

RegisterNUICallback("FireEmployee", function(data, cb)
   if data.cid then
      TriggerServerEvent("qb-bossmenu:server:FireEmployee", data.cid)
      Wait(200)
      exports['qb-menu']:closeMenu()
      exports['qb-core']:HideText()
   end
   SetNuiFocus(0, 0)
end)



RegisterNUICallback("setGarageCoord", function(data, cb)
   createGarageCoord = GetEntityCoords(PlayerPedId())
   TriggerScreenblurFadeOut(1)
   SetNuiFocus(0, 0)
end)

RegisterNUICallback("createHouse", function(data, cb)
   if (createHouseCoord and createGarageCoord) then
      TriggerServerEvent("s4-house:server:createhouse", data, createHouseCoord, createGarageCoord)
   else
      TriggerEvent("0r-core:notif", { type = "emoji", text = Config.Lang.setCoords ,  icon = "🚨" })
   end
   createHouseCoord = nil
   createGarageCoord = nil
   TriggerScreenblurFadeOut(1)
   SetNuiFocus(0, 0)
end)

RegisterNUICallback("takeImg", function(data, cb)
   TriggerScreenblurFadeOut(1)
   SetNuiFocus(0, 0)
   takePhoto = true
   Citizen.Wait(0)
   CreateMobilePhone(0)
	CellCamActivate(true, true)
   while takePhoto do
      Citizen.Wait(0)
      if IsControlJustPressed(1, 177) then -- CANCEL
        DestroyMobilePhone()
        CellCamActivate(false, false)
        cb(json.encode({ url = nil }))
        takePhoto = false
        break
      elseif IsControlJustPressed(1, 176) then -- TAKE.. PIC
         if Config.PhotoWebhook and Config.PhotoWebhook ~= "" then

            exports['screenshot-basic']:requestScreenshotUpload(Config.PhotoWebhook, 'files[]', function(data)
               local resp = json.decode(data)
               DestroyMobilePhone()
               CellCamActivate(false, false)
               cb(resp.attachments[1].proxy_url)
               SetNuiFocus(1, 1)
           end)
            print("OK")
         else
            print("Discord Webhook is Empty")
         end
         takePhoto = false
      end
      
   end
end)

RegisterNUICallback("close", function(data, cb)
   TriggerScreenblurFadeOut(1)
   SetNuiFocus(0,0)
   if data.id then 

      DoScreenFadeOut(400)
      Wait(500)
      if CheckAuth(tonumber(data.id)) == true then 
         house = GetHouseFromId(tonumber(data.id))
         __clear_ipl__()
         -- RequestIpl(Theme[house.theme].ipl)
         -- RefreshInterior(Theme[house.theme].interiorId)
         
         if house.info.UsingTheme == true then 
            if not house.info.Theme[house.theme] then
               RequestIpl(house.info.Theme[house.theme].ipl)
               RefreshInterior(house.info.Theme[house.theme].interiorId)
            else
               RequestIpl(house.info.Theme[house.theme].ipl)
               RefreshInterior(house.info.Theme[house.theme].interiorId)
            end      
         else
            interiorID = GetInteriorAtCoords(GetEntityCoords(PlayerPedId()))
            for k,v in pairs(house.info.props) do
               DisableInteriorProp(interiorID, v)
            end
            EnableInteriorProp(interiorID, house.prop)
            EnableInteriorProp(interiorID, house.theme)
            RefreshInterior(interiorID)
         end

         SetInteriorEntitySetColor(garageInteriorID, "tint", tonumber(house.garageId))
         RefreshInterior(garageInteriorID)

         Wait(500)
         for k,v in pairs(evobjlist) do
            DeleteEntity(v.pid)
         end
         evobjlist = {}
         for k,v in pairs(house.props) do
            addNewProp(v)
         end
         SetEntityCoords(GetPlayerPed(-1), house.coords.house_out)
         TriggerServerEvent("s4-house:server:setbucket", tonumber(house.id), im_robber)
         Wait(500)
         DoScreenFadeIn(1000) 
      end

   end
end)

CheckAuth = function(id)
   house = GetHouseFromId(tonumber(id))
   auth = false
 
   if house.owner == LocalOwner then 
      auth = true
   end

   for i,val in pairs(house.friends) do
      if val.id == LocalOwner then  
         auth = true
         break
      end
   end

   return auth
end

CheckAuthInfo = function(id)
   house = GetHouseFromId(tonumber(id))
   auth = ""
 
   for i,val in pairs(house.friends) do
      if val.id == LocalOwner then  
         auth = "friend"
         break
      end
   end
   
   if house.owner == LocalOwner then 
      auth = "own"
   end

   return auth
end

local function getVehicleFromVehList(hash)
	for _, v in pairs(QBCore.Shared.Vehicles) do
		if hash == v.hash then
			return v.model
		end
	end
end


RegisterNUICallback("GoInGarage", function(data, cb)
   veh = GetVehiclePedIsIn(PlayerPedId())
   Wait(200)
   if veh then 
      
      if Garages[tonumber(data.id)] == true then 
         TriggerEvent("0r-core:notif", { type = "emoji", text = Config.Lang.garajdakurtvar ,  icon = "🦍" })
         return 
      else
      
         local carprops = QBCore.Functions.GetVehicleProperties(veh)
      S4.TriggerServerCallback('s4-house:server:checkGarageSlot', function(x)
         
          if x == true then 
            
            house = GetHouseFromId(tonumber(data.id))

            is_in_garage = true
            __GAR_()
            DeleteEntity(veh)
          
            TriggerServerEvent("s4-house:server:setbucket", tonumber(house.id))
            TriggerServerEvent("s4-house:server:entergarage", tonumber(house.id))

            Wait(1000)
            SetEntityCoords(GetPlayerPed(-1), house.coords.garage_out)
      
           
            Citizen.CreateThread(function() 
               for k,v in pairs(house.garage) do
               
               if v.props.model and v.model then
                  RequestModel(v.props.model)
                  while not HasModelLoaded(v.props.model) do
                     Wait(1000)
                  end
                  local xVehicle = CreateVehicle(v.props.model, Config.GaragePos[v.id].coord, Config.GaragePos[v.id].h, false, false)
                  
                  QBCore.Functions.SetVehicleProperties(xVehicle, v.props)
                  SetVehicleNumberPlateText(xVehicle, v.plate)
                  table.insert(LocalVehicles, xVehicle)
               end
               end
      
            end)
         end
      end, { id = tonumber(data.id), slot = tonumber(data.slot), props = carprops, plate = GetVehicleNumberPlateText(veh), model = getVehicleFromVehList(carprops.model) })
   end end
end)

RegisterNUICallback("tryBuy", function(data, cb)
   QBCore.Functions.TriggerCallback('s4-house:server:tryBuy', function(x) return cb(x) end, data)
end)


RegisterNUICallback("AddFriends", function(data, cb)
   TriggerServerEvent("s4-house:server:AddFriends", data.id, data.pid, data.name)
end)

RegisterNUICallback("RemoveFriends", function(data, cb)
   TriggerServerEvent("s4-house:server:RemoveFriends", data.id, data.pid, data.name)
end)

RegisterNUICallback("StreamFriends", function(data, cb)
   TriggerServerEvent("s4-house:server:StreamFriends")
   TriggerScreenblurFadeOut(1)
   SetNuiFocus(0,0)
end)



RegisterNUICallback("GetPlayers", function(data, cb)
   QBCore.Functions.TriggerCallback('s4-house:server:GetPlayers', function(x) 
      return cb({ 
         house = GetHouseFromId(tonumber(data.id)).friends,
         all = x
      }) 
   end)
end)


RegisterNUICallback("trySell", function(data, cb)
   QBCore.Functions.TriggerCallback('s4-house:server:trySell', function(x) return cb(x) end, data)
end)

RegisterNUICallback("SetName", function(data, cb)
   TriggerServerEvent("s4-house:server:SetName", data.id, data.name)
end)

RegisterNUICallback("table", function(data, cb) SetTable(data.turl, tonumber(data.tid)) end)

SetTable = function(url, x)

   TriggerServerEvent("s4-house:server:setExtends", CurId, { i = x, url = url })

   if url == "" then return end
 
   for i=1,8 do

      if x == 1 then 
        setIMG(url, "apa_mp_h_0"..i.."_kitchen_art", "km_v_ap_hi_art2")
      end

      if x == 2 then 
       setIMG(url, "apa_mp_h_0"..i.."_hall_art_large", "p_h_acc_artwalll_03")
       setIMG(url, "apa_mp_h_0"..i.."_int_txd", "km_v_ap_hi_art3")
       setIMG(url, "apa_mp_h_0"..i.."_int_txd", "mh_v_fh_artz2_d")
      end

   end

end


addNewProp = function(prop)
   local kprp = CreateObject(GetHashKey(prop.prop), prop.coord.x, prop.coord.y, prop.coord.z, false, false, false)
   SetEntityRotation(kprp, prop.rot.x,  prop.rot.y, prop.rot.z, 2, true)
   FreezeEntityPosition(kprp, true)
   table.insert(evobjlist, { pid = kprp, prop = prop.prop, coord = vector3(prop.coord.x, prop.coord.y, prop.coord.z), rot = vector3(prop.rot.x, prop.rot.y, prop.rot.z), label = GetPropInfo(prop.prop).label, id = #evobjlist+1 })
end

GetPropInfo = function(prop)
   for k,v in pairs(Config.HouseItems) do
      if v.prop == prop then 
         return v
      end
   end
end

RegisterNUICallback("changeTheme", function(data, cb)
   __clear_ipl__()
   house = GetHouseFromId(data.id)
   if house.info.UsingTheme == true then 
      RequestIpl(house.info.Theme[data.theme].ipl)
      RefreshInterior(house.info.Theme[data.theme].interiorId)
   else
      interiorID = GetInteriorAtCoords(GetEntityCoords(PlayerPedId()))
      for k,v in pairs(house.info.props) do
         DisableInteriorProp(interiorID, v)
      end
      EnableInteriorProp(interiorID, house.prop)
      EnableInteriorProp(interiorID, data.theme)
      RefreshInterior(interiorID)
   end
   SetInteriorEntitySetColor(garageInteriorID, "tint", tonumber(house.garageId))
   RefreshInterior(garageInteriorID)
   TriggerServerEvent("s4-house:server:setTheme", data.id, data.theme)
end)

RegisterNUICallback("changeGarage", function(data, cb)
   __clear_ipl__()
   FreezeEntityPosition(GetPlayerPed(-1), true)
   print(tonumber(data.garaj))
   SetInteriorEntitySetColor(garageInteriorID, "tint", tonumber(data.garaj))
   RefreshInterior(garageInteriorID)
   TriggerServerEvent("s4-house:server:setGarage", data.id, data.garaj)
end)

RegisterNUICallback("changeProp", function(data, cb)
   __clear_ipl__()
   house = GetHouseFromId(data.id)

   interiorID = GetInteriorAtCoords(GetEntityCoords(PlayerPedId()))
   for k,v in pairs(house.info.props) do
      DisableInteriorProp(interiorID, v)
   end
   EnableInteriorProp(interiorID, data.prop)
   EnableInteriorProp(interiorID, house.theme)
   RefreshInterior(interiorID)

   TriggerServerEvent("s4-house:server:setProp", data.id, data.prop)
end)


Perc = function(price)
   yuzde = price/100
   yuzde = yuzde * 10
   return price - yuzde
end

GetHouseFromId = function(id)
   for k,v in pairs(Houses) do
      if k == id then 
         return v
      end
   end
end

GetGarageAvailable = function(id) 
   house = GetHouseFromId(id)
   
   for i=1, house.garage_stock  do
     if type(house.garage[i]) == "nil" then 
        return i
     end
   end

   return 0
end


ClearBlips = function()
    for k, v in pairs(Blips) do
       RemoveBlip(v)
    end
 end
  
CreateBlips = function(house, coord, col)
    local blip = AddBlipForCoord(coord)
     SetBlipSprite(blip, 40)
     SetBlipDisplay(blip, 4)
     SetBlipScale(blip, 0.5)
     SetBlipColour(blip, col or 64) 
     SetBlipAsShortRange(blip, true)
     BeginTextCommandSetBlipName("STRING")
     AddTextComponentString(house.name)
     EndTextCommandSetBlipName(blip)
    table.insert(Blips, blip)
 end


DrawText3D = function (x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
   --  DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

numWithCommas = function(n)
   return tostring(math.floor(n)):reverse():gsub("(%d%d%d)","%1,")
                                 :gsub(",(%-?)$","%1"):reverse()
end
 
Theme = {
   modern = {interiorId = 227841,  ipl = "apa_v_mp_h_01_c"},
   moody = {interiorId = 228609, ipl = "apa_v_mp_h_02_c"},
   vibrant = {interiorId = 229377, ipl = "apa_v_mp_h_03_c"},
   sharp = {interiorId = 230145, ipl = "apa_v_mp_h_04_c"},
   monochrome = {interiorId = 230913, ipl = "apa_v_mp_h_05_c"},
   seductive = {interiorId = 231681, ipl = "apa_v_mp_h_06_c"},
   regal = {interiorId = 232449, ipl = "apa_v_mp_h_07_c"},
   aqua = {interiorId = 233217, ipl = "apa_v_mp_h_08_c"}
}


__clear_ipl__ = function()
   for k,v in pairs(Theme) do
      if IsIplActive(Theme[k].ipl) then 
         RemoveIpl(Theme[k].ipl)
         RefreshInterior(Theme[k].interiorId)
         PinInteriorInMemory(Theme[k].interiorId)
         SetEntityCoordsNoOffset(GetPlayerPed(-1), GetEntityCoords(GetPlayerPed(-1)))
         SetEntityHeading(GetPlayerPed(-1), GetEntityHeading(GetPlayerPed(-1)))
      end
   end
end


RegisterNUICallback("tp", function(data, cb) switch(data.id, data.type) end)



RegisterNetEvent("s4-house:client:tryAgain")
AddEventHandler("s4-house:client:tryAgain", function()  
   TriggerServerEvent('s4-house:server:request')
end)


RegisterNetEvent("s4-house:client:cachehouse")
AddEventHandler("s4-house:client:cachehouse", function(hid) 
   CurId = hid 
   if hid then 
      h = GetHouseFromId(hid)
 
      for k,v in pairs(objlist) do
         if DoesEntityExist(v) then 
            DeleteEntity(v)
         end
      end

      for k,v in pairs(h.props) do
         addNewProp(v)
      end

      if h.info.UsingTheme == true then 
         RequestIpl(h.info.Theme[h.theme].ipl)
         RefreshInterior(h.info.Theme[h.theme].interiorId)
      else
         interiorID = GetInteriorAtCoords(GetEntityCoords(PlayerPedId()))
         for k,v in pairs(h.info.props) do
            DisableInteriorProp(interiorID, v)
         end
         EnableInteriorProp(interiorID, house.prop)
         EnableInteriorProp(interiorID, h.theme)
         RefreshInterior(interiorID)
      end

      SetInteriorEntitySetColor(garageInteriorID, "tint", tonumber(h.garageId))
      RefreshInterior(garageInteriorID)
      
   end

end)

RegisterNetEvent('stream:garage')
AddEventHandler('stream:garage', function(g)
   Garages = g
end)

RegisterNetEvent('s4-house:client:switch')
AddEventHandler('s4-house:client:switch', function(id, type) switch(id, type)  end)

__gout__ = function(id, notp)   
   for k,v in pairs(LocalVehicles) do
      DeleteEntity(v)
   end
   Wait(1000)
   Dv(GetHouseFromId(id).coords.garage_in, 50)
   TriggerServerEvent("s4-house:server:outgaragex", tonumber(id))
   if not notp then 
      SetEntityCoords(GetPlayerPed(-1), GetHouseFromId(id).coords.garage_in)
   end
end

cacheVehs = {}
 
switch = function(id, x) 
   x = x and tonumber(x) or x

   DoScreenFadeOut(100)
   Wait(500)
 
   house = GetHouseFromId(id)
   house.id = id
   CurId = house.id
 
   case = {
      ["gin_g"] = function()
         if Garages[tonumber(house.id)] == true then 
            TriggerEvent("0r-core:notif", { type = "emoji", text = Config.Lang.garajdakurtvar ,  icon = "🦍" })
            return 
         end
         TriggerServerEvent("s4-house:server:entergarage", tonumber(house.id))
         TriggerServerEvent("s4-house:server:setbucket", tonumber(house.id))
         Wait(1000)
         Citizen.CreateThread(function() 
            for k,v in pairs(house.garage) do
             
              if v.props.model and v.model then
               RequestModel(v.props.model)
               while not HasModelLoaded(v.props.model) do
                Wait(1000)
               end
               local xVehicle = CreateVehicle(v.props.model, Config.GaragePos[v.id].coord, Config.GaragePos[v.id].h, false, false)
               QBCore.Functions.SetVehicleProperties(xVehicle, v.props)
               SetVehicleNumberPlateText(xVehicle, v.plate)
               table.insert(LocalVehicles, xVehicle)
              end
 
            end
            is_in_garage = true
            __GAR_()
			   Wait(1000)
            SetEntityCoords(GetPlayerPed(-1), house.coords.garage_out)
          end) 
      end,
      ["ginv_d"] = function()
         is_in_garage = true
         __GAR_()
		   Wait(1000)
         SetEntityCoords(GetPlayerPed(-1), house.coords.garage_out)
         TriggerServerEvent("s4-house:server:entergarage", id)

      end,
      ["gout"] = function()
         TriggerServerEvent("s4-house:server:outgaragex", id)
         
         __gout__(id)
         TriggerServerEvent("s4-house:server:outbucket")
        
         is_in_garage = false
         __GAR_()
      end,
   }

 
   case[x]()

   SetInteriorEntitySetColor(garageInteriorID, "tint", tonumber(house.garageId))
   RefreshInterior(garageInteriorID)
   
   Wait(1000)
   DoScreenFadeIn(1000)


 
end

__GAR_ = function()
 
   
   Citizen.CreateThread(function() 
       
      while is_in_garage == true do 
         sleepThread = 1000

         veh = GetVehiclePedIsIn(PlayerPedId())
     
         if veh ~= 0 then 
            if IsControlJustPressed(0, 71) or IsControlJustPressed(0, 72) then 
               _gout_veh_(veh)
               Wait(1000)
            end
            sleepThread = 1
         end
         
         Citizen.Wait(sleepThread)
      end

   end)

end

_gout_veh_ = function(veh)

   local veh,props
   
   if not veh then 
      Citizen.CreateThread(function()
	     while not veh or veh == 0 do 
	        veh = GetVehiclePedIsIn(PlayerPedId())
			if veh then props = QBCore.Functions.GetVehicleProperties(veh) end
			Citizen.Wait(1)
		 end
	  end)
   end
   
   DoScreenFadeOut(400)
   Wait(500)
   is_in_garage = false
   __GAR_()
   
   house = GetHouseFromId(CurId)
   __gout__(CurId, true)
   Wait(500)
   TriggerServerEvent("s4-house:server:outbucket")
   TriggerServerEvent("s4-house:server:outgaragex", CurId)
   Wait(500)
   for k,v in pairs(house.garage) do
      if v.props.plate == props.plate then 
         house.garage[k] = nil
         local xVehicle = CreateVehicle(v.props.model, house.coords.garage_in, house.coords.garage_out_heading, true, false)
         QBCore.Functions.SetVehicleProperties(xVehicle, props)
         SetVehicleNumberPlateText(xVehicle, props.plate)
         SetPedIntoVehicle(PlayerPedId(), xVehicle, -1)
         TriggerServerEvent("s4-house:server:outgarage", CurId, house.garage)
         TriggerEvent("vehiclekeys:client:SetOwner", props.plate)
         DoScreenFadeIn(1000)
         Wait(1000)
         CurId = 0
         break
      end
   end
end
 
index = function(x)
   for k,v in pairs(Theme) do
      if k == x then 
         return k
      end
   end
   return nil
end

Teleport = function(coords)
   for height = 1, 1000 do
         SetPedCoordsKeepVehicle(PlayerPedId(), coords.x, coords.y, height + 0.0)
         local foundGround, zPos = GetGroundZFor_3dCoord(coords.x, coords.y, height + 0.0)
         if foundGround then
            SetPedCoordsKeepVehicle(PlayerPedId(), coords.x, coords.y, height + 0.0)
            break
         end
      Citizen.Wait(5)
   end
end
 
Dv = function(coords, radius)

	if radius and tonumber(radius) then
		radius = tonumber(radius) + 0.01
		local vehicles = S4.GetVehiclesInArea(coords, radius)

		for k,entity in ipairs(vehicles) do
			local attempt = 0

			while not NetworkHasControlOfEntity(entity) and attempt < 100 and DoesEntityExist(entity) do
				Citizen.Wait(100)
				NetworkRequestControlOfEntity(entity)
				attempt = attempt + 1
			end

			if DoesEntityExist(entity) and NetworkHasControlOfEntity(entity) then
            DeleteVehicle(entity)
			end
		end
	else
		local vehicle, attempt = S4.GetVehicleInDirection(), 0

		if IsPedInAnyVehicle(PlayerPedId(), true) then
			vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
		end

		while not NetworkHasControlOfEntity(vehicle) and attempt < 100 and DoesEntityExist(vehicle) do
			Citizen.Wait(100)
			NetworkRequestControlOfEntity(vehicle)
			attempt = attempt + 1
		end

		if DoesEntityExist(vehicle) and NetworkHasControlOfEntity(vehicle) then
			DeleteVehicle(vehicle)
		end
	end

end

RegisterNUICallback("GetGarageAvailables", function(data, cb)
   cb(GetGarageAvailables(data.id))
end)

GetGarageAvailables = function(id) 
   house = GetHouseFromId(tonumber(id))
   g = {}
   
   for i=1, house.garage_stock do
     if type(house.garage[i]) == "nil" then 
        table.insert(g, { slot = i, status = false, car = {}  })
     else 
        table.insert(g, { slot = i, status = true, car = house.garage[i]  })
     end
   end

   return g
end


function setIMG(x,p,t) 
	RequestNamedPtfxAsset("core")
	local txd = CreateRuntimeTxd('texture')
	local duiObj = CreateDui(x, 512, 512)
    _G.duiObj = duiObj
    local dui = GetDuiHandle(duiObj)
    local tx = CreateRuntimeTextureFromDuiHandle(txd, '_texture', dui)
    AddReplaceTexture(p, t, 'texture', '_texture')
end

Citizen.CreateThread(__clear_ipl__)

RegisterNetEvent('0r-core:onPlayerJoined')
AddEventHandler('0r-core:onPlayerJoined', function(playerData)
   Citizen.CreateThread(__init__)
end)
 
AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    Citizen.CreateThread(__init__)
end)