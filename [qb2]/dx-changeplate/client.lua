local QBCore = exports['qb-core']:GetCoreObject()
 
RegisterNUICallback('change', function(data, cb) 
   SetNuiFocus(false, false)
   if data.plate then 
      local veh = GetVehiclePedIsIn(PlayerPedId(), false)
	  local old = GetVehicleNumberPlateText(veh)
	  SetVehicleNumberPlateText(veh, data.plate)
	  local props = QBCore.Functions.GetVehicleProperties(veh)
	  TriggerServerEvent("dx-changeplate:setplate", old, props)	 
	  TriggerEvent('vehiclekeys:client:SetOwner', data.plate) 
   end
end)
 
local coords = vector3(147.2835, 321.0725, 112.1304)
Citizen.CreateThread(function()
	   while true do
	     s = 2000
		 local distance = #(GetEntityCoords(PlayerPedId()) - coords)
		 if distance <= 15.0 then
			s = 5
		    DrawText3D(coords.x , coords.y  , coords.z , '[E] - Edit License Plate [5000$]')
			if IsControlJustPressed(1, 38)   then
				QBCore.Functions.TriggerCallback('dx-changeplate:checkowned', function(data)
                        if data == true then 
							SetNuiFocus(true, true)
                            SendNUIMessage({ type = "ui"  })
						    Wait(1000)
					    end
                    end, GetVehicleNumberPlateText(GetVehiclePedIsIn(PlayerPedId(), false)))						  
				end
					 
	        end
		 Citizen.Wait(s)
	   end
	 
end)

function DrawText3D(x, y, z, text)
	SetTextScale(0.30, 0.30)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 250
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end