if dx.Framework == "qb" then
    QBCore = exports['qb-core']:GetCoreObject()
elseif dx.Framework == "oldqb" then 
    QBCore = nil
end

Citizen.CreateThread(function()
    if dx.Framework == "oldqb" then 
        while QBCore == nil do
            TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
            Citizen.Wait(200)
        end
	elseif dx.Framework == "qb" then
		while QBCore == nil do
            Citizen.Wait(200)
        end
    end
	Wait(4000)
	SendNUIMessage({
		type = 'setJs', 
		vehicles = dx.Vehicles,
		categories = dx.Categories,
		helicopters = dx.Helicopters,
		weapons = dx.Weapons,
		items = dx.Items,
		moneys = dx.Money,
		customItems = dx.Customize,
		customPlatePrice = dx.CustomPlatePriceOnBuyVehicle,
		minCharForPhone = dx.MinCharForPhoneNumber,
		minCharForPlate = dx.MinCharForPlate,
		maxCharForPhone = dx.MaxCharForPhoneNumber,
		maxCharForPlate = dx.MaxCharForPlate,
		credits = dx.BuyCredits,
		language = dx.Translate,
	})	
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
	PlayerData = QBCore.Functions.GetPlayerData()
end)

local openMenuSpamProtect = 0
RegisterCommand(dx.OpenMenuCommand, function()
	if openMenuSpamProtect <= GetGameTimer() then 
		openMenuSpamProtect = GetGameTimer() + 1000
		QBCore.Functions.TriggerCallback("dx-donateSystem:getPlayerDetails", function(result)
			SetNuiFocus(true,true)
			SendNUIMessage({
				type = 'openUi', 
				currentCredit = result.playerData.credit,
				firstName = result.charInfo.firstname,
				lastName = result.charInfo.lastname,
			})	
		end)
	else
		dx.ClientNotify(dx.Translate.openSpam, "error")
	end
end)

local sendInputSpamProtect = 0
RegisterNUICallback('sendInput', function(data, cb)
	if sendInputSpamProtect <= GetGameTimer() then
		sendInputSpamProtect = GetGameTimer() + 2000 
		QBCore.Functions.TriggerCallback("dx-donateSystem:sendInput", function(result)
			if result then 	
				cb(result)
			else
				cb(false)
			end
		end, data)
	else
		dx.ClientNotify(dx.Translate.spamNotify, "error")
		cb(false)
	end
end)

local getVehicleSpamProtect = 0
RegisterNUICallback('getVehicle', function(data, cb)
	if getVehicleSpamProtect <= GetGameTimer() then
		getVehicleSpamProtect = GetGameTimer() + 2000
		QBCore.Functions.TriggerCallback("dx-donateSystem:getVehicle", function(result)
			if result then 	
				cb(result)
			else
				cb(false)
			end
		end, data)
	else
		dx.ClientNotify(dx.Translate.spamNotify, "error")
		cb(false)
	end
end)

local getWeaponSpamProtect = 0
RegisterNUICallback('getWeapon', function(data, cb)
	if getWeaponSpamProtect <= GetGameTimer() then
		getWeaponSpamProtect = GetGameTimer() + 2000
		QBCore.Functions.TriggerCallback("dx-donateSystem:getWeapon", function(result)
			if result then 	
				cb(result)
			else
				cb(false)
			end
		end, data)
	else
		dx.ClientNotify(dx.Translate.spamNotify, "error")
		cb(false)
	end
end)

local getItemSpamProtect = 0
RegisterNUICallback('getItem', function(data, cb)
	if getItemSpamProtect <= GetGameTimer() then
		getItemSpamProtect = GetGameTimer() + 2000
		QBCore.Functions.TriggerCallback("dx-donateSystem:getItem", function(result)
			if result then 	
				cb(result)
			else
				cb(false)
			end
		end, data)
	else
		dx.ClientNotify(dx.Translate.spamNotify, "error")
		cb(false)
	end
end)

local getMoneySpamProtect = 0
RegisterNUICallback('getMoney', function(data, cb)
	if getMoneySpamProtect <= GetGameTimer() then
		getMoneySpamProtect = GetGameTimer() + 2000
		QBCore.Functions.TriggerCallback("dx-donateSystem:getMoney", function(result)
			if result then 	
				cb(result)
			else
				cb(false)
			end
		end, data)
	else
		dx.ClientNotify(dx.Translate.spamNotify, "error")
		cb(false)
	end	
end)

local getCustomPlate = 0
RegisterNUICallback('getCustomPlate', function(data, cb)
	if getCustomPlate <= GetGameTimer() then
		getCustomPlate = GetGameTimer() + 2000
		if IsPedInAnyVehicle(PlayerPedId(), false) then
			local veh = GetVehiclePedIsIn(PlayerPedId(), false)
			local oldPlate = GetVehicleNumberPlateText(veh)
			QBCore.Functions.TriggerCallback("dx-donateSystem:getCustomPlate", function(result)
				if result then 	
					local newPlate = data.input
					SetVehicleNumberPlateText(veh, data.input)
					if dx.GiveAddKeys then 
						dx.GiveAddKeysFunction(newPlate)
					end
					cb(true)
				else
					cb(dx.Translate.errorDuringPurchase)
				end
			end, data, oldPlate)
		else
			cb(dx.Translate.insideVehicle)
		end
	else
		dx.ClientNotify(dx.Translate.spamNotify, "error")
		cb(false)
	end	
end)

local getPrivNumber = 0
RegisterNUICallback('getPrivNumber', function(data, cb)
	if getPrivNumber <= GetGameTimer() then
		getPrivNumber = GetGameTimer() + 2000
		QBCore.Functions.TriggerCallback("dx-donateSystem:getPrivNumber", function(result)
			if result then 	
				cb(true)
			else
				cb(dx.Translate.errorDuringPurchase)
			end
		end, data)
	else
		dx.ClientNotify(dx.Translate.spamNotify, "error")
		cb(false)
	end	
end)

RegisterNUICallback('closeMenu', function(data, cb)
	SetNuiFocus(false, false)
end)