local QBCore = exports['qb-core']:GetCoreObject()
mision = false
local timer = 0
local canRob = true

function modelRequest(model)
 RequestModel(model)
 while not HasModelLoaded(model) do
 Wait(500)
 end
end

ShowFloatingHelpNotification = function(msg, coords)
	AddTextEntry('FloatingHelpNotification', msg)
	SetFloatingHelpTextWorldPosition(1, coords)
	SetFloatingHelpTextStyle(1, 1, 2, -1, 3, 0)
	BeginTextCommandDisplayHelp('FloatingHelpNotification')
	EndTextCommandDisplayHelp(2, false, false, -1)
end

function ShowHelpNotification(text)
  SetTextComponentFormat("STRING")
  AddTextComponentString(text)
  DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

Citizen.CreateThread(function()
	  modelRequest(0xE497BBEF)
    RequestAnimDict("mini@strip_club@idles@bouncer@base")
    while not HasAnimDictLoaded("mini@strip_club@idles@bouncer@base") do
      Wait(1)
    end
    ped = CreatePed(4, 0xE497BBEF,1200.58,-3114.56,4.5, false, true)
    SetEntityHeading(ped, 294.1)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    TaskPlayAnim(ped,"mini@strip_club@idles@bouncer@base","base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
end)

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(800)
      if GetDistanceBetweenCoords(vector3(1200.58, -3114.56, 4.5), GetEntityCoords(PlayerPedId(), true)) < 4 then
      	inzone1 = true
      end
  end
end)

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(800)
      if GetDistanceBetweenCoords(vector3(1200.58, -3114.56, 4.5), GetEntityCoords(PlayerPedId(), true)) > 4 then
      	inzone1 = false
      end
  end
end)


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(10)
		if inzone1 and mision == false then
			ShowFloatingHelpNotification(flomsg1, vector3(1200.58, -3114.56, 4.5+2))
		end
	end
end)

function DisplayAdvancedNotification(icon, title, subtitle, text)
	SetNotificationTextEntry("STRING")
	AddTextComponentSubstringPlayerName(text)
	SetNotificationMessage_2(icon, icon, false, 4, title, subtitle)
	DrawNotification(false, false)
end

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
      if inzone1 and mision == false then
        if canRob then
          if IsControlJustPressed(1, Config.InteractKey) then
            DisplayAdvancedNotification('CHAR_ARTHUR', "Client", "", "I have a job for you, theres a vehicle on your gps, bring it to me quickly")
            TriggerEvent("spawncar")
            mision = true
          end
        else
          ShowHelpNotification('You cannot take jobs, you have to wait '..timer..' seconds')
        end
      end
  end
end)

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(5)
    if mision == true then 
      ShowHelpNotification("Find the vehicle and take it to the client.")
      DrawMarker(1, vector3(1189.46, -3108.26, 4.24), 0, 0, 0, 0, 0, 0, 3.5001, 3.5001, 0.6001, 0, 0, 255, 200, 0, 0, 0, 0)
        if GetDistanceBetweenCoords(vector3(1189.46, -3108.26, 4.24), GetEntityCoords(PlayerPedId(), true)) < 4 then
          ShowFloatingHelpNotification(flomsg2, vector3(1189.46, -3108.26, 4.24+2))
          if IsControlJustPressed(1, Config.InteractKey) then
            local coordsauto = GetEntityCoords(Veh)
            if GetDistanceBetweenCoords(vector3(1189.46, -3108.26, 4.24), coordsauto, true) < 4 then
              QBCore.Functions.DeleteVehicle(Veh)
              mision = false
              TriggerServerEvent("dx-carthief:setMoney")
              RemoveBlip(blip2)
              canRob = false
              timer = 3600
            else
              ShowHelpNotification("You are not in the vehicle I asked for!")
            end
          end
        end
    end
  end
end)



RegisterNetEvent("spawncar")
AddEventHandler("spawncar", function()
  pos = Config.spawnpoints[math.random(1, #Config.spawnpoints)]
  modelo = Config.vehicles[math.random(1, #Config.vehicles)]
  modelo2 = GetHashKey(modelo.m)
  print(modelo.m)
  modelRequest(0x54DBEE1F)
  modelRequest(modelo2)
  pedenauto = CreatePed(4, 0x54DBEE1F,pos.x,pos.y,pos.z,pos.h, true, true)
  coordspedenauto = GetEntityCoords(pedenauto)
  Veh = CreateVehicle(modelo2,pos.x,pos.y,pos.z,pos.h, true, true)
  SpawnCar(pedenauto,Veh,-1)
  TaskWarpPedIntoVehicle(pedenauto, Veh, -1)
  TaskVehicleDriveWander(pedenauto,Veh,20.0,786603)
  print(coordspedenauto)
  CreateBlips()
end)



CreateBlips = function()
    blip = AddBlipForEntity(Veh)
    SetBlipSprite(blip, 523)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 1.0)
    SetBlipColour(blip, 60)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Vehicle")
    EndTextCommandSetBlipName(blip)

    blip2 = AddBlipForCoord(1189.46, -3108.26, 4.24)
    SetBlipSprite(blip2, 229)
    SetBlipDisplay(blip2, 4)
    SetBlipScale(blip2, 1.0)
    SetBlipColour(blip2, 0)
    SetBlipAsShortRange(blip2, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Delivery point")
    EndTextCommandSetBlipName(blip2)
end


CreateBlips2 = function()
    blip3 = AddBlipForEntity(ped)
    SetBlipSprite(blip3, 303)
    SetBlipDisplay(blip3, 4)
    SetBlipScale(blip3, 1.0)
    SetBlipColour(blip3, 4)
    SetBlipAsShortRange(blip2, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Vehicle theft")
    EndTextCommandSetBlipName(blip3)
end


function SpawnCar(ped,veh,seat)
  SetPedIntoVehicle(ped,veh,seat)
  SetPedRelationshipGroupHash(ped)
  SetDriverAbility(ped, 1.0)
  SetPedFleeAttributes(ped, 0, 1)
  SetPedCombatAttributes(ped, 2,1)
  SetPedCombatAttributes(ped, 3,1)
end

AddEventHandler('onResourceStart', function()
  mision = true
  Wait(5000)
  flomsg1 = "Press ~g~[E]~s~ to talk to the client."
  flomsg2 = "Press ~g~[E]~s~ to deliver the vehicle"
  print("Script Loaded")
  mision = false
  if Config.blip then
  	CreateBlips2()
  end
end)

Citizen.CreateThread(function()
  while true do
      if canRob == false then
          if timer < 0 then
              timer = 0
              canRob = true
          else
              if timer == 0 then
                  canRob = true
              else
                  timer = timer - 60
              end
          end
      end
      Citizen.Wait(60000)
  end
end)