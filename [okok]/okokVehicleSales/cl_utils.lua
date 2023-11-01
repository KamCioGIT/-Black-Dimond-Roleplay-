QBCore = exports["qb-core"]:GetCoreObject()

RegisterNetEvent(Config.EventPrefix..":notification")
AddEventHandler(Config.EventPrefix..":notification", function(title, text, type, time)
	if Config.UseOkokNotify then
		exports['okokNotify']:Alert(title, text, time, type)
	else
		QBCore.Functions.Notify(text, type, time)
	end
end)

RegisterNetEvent(Config.EventPrefix..":giveKeys")
AddEventHandler(Config.EventPrefix..":giveKeys", function(plate)
	
	TriggerEvent("vehiclekeys:client:SetOwner", plate) -- qb-vehiclekeys
	
end)

RegisterNetEvent(Config.EventPrefix..":removeKeys")
AddEventHandler(Config.EventPrefix..":removeKeys", function(vehicle)

	-- Set here your key removal
	
end)

function TextUI(text, time, side)
	if Config.UseOkokTextUI then
		if text ~= nil then
			exports['okokTextUI']:Open(text, time, side)
		else
			exports['okokTextUI']:Close()
		end
	else
		if text ~= nil then
			exports['qb-core']:DrawText(text, side)
		else
			exports['qb-core']:HideText()
		end
	end
end