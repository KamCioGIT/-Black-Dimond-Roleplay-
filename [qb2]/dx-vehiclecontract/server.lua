local QBCore = exports['qb-core']:GetCoreObject()
local Webhook = 'https://discord.com/api/webhooks/985308790985482301/An98xG4izY1_TQqTf5DerFoP9JuO34gC-ZiarzOrJKw131bOH5jPlkksx6_GyRwczPmb'

RegisterServerEvent('dx-vehiclecontract:changeVehicleOwner')
AddEventHandler('dx-vehiclecontract:changeVehicleOwner', function(data)
	_source = data.sourceIDSeller
	target = data.targetIDSeller
	plate = data.plateNumberSeller
	model = data.modelSeller
	source_name = data.sourceNameSeller
	target_name = data.targetNameSeller
	vehicle_price = tonumber(data.vehicle_price)

	local xPlayer = QBCore.Functions.GetPlayer(_source)
	local tPlayer = QBCore.Functions.GetPlayer(target)
	local webhookData = {
		model = model,
		plate = plate,
		target_name = target_name,
		source_name = source_name,
		vehicle_price = vehicle_price
	}
	local result = MySQL.Sync.fetchAll('SELECT * FROM player_vehicles WHERE citizenid = @identifier AND plate = @plate', {
		['@identifier'] = xPlayer.PlayerData.citizenid,
		['@plate'] = plate
	})

	if Config.RemoveMoneyOnSign then
		local bankMoney = tPlayer.Functions.GetMoney("bank")

		if result[1] ~= nil  then
			if bankMoney >= vehicle_price then
				MySQL.Async.execute('UPDATE player_vehicles SET citizenid = @target, license = @license WHERE citizenid = @owner AND plate = @plate', {
					['@owner'] = xPlayer.PlayerData.citizenid,
					['@target'] = tPlayer.PlayerData.citizenid,
					['@plate'] = plate,
					['@license'] = tPlayer.PlayerData.license
				}, function (result2)
					if result2 ~= 0 then	
						
						tPlayer.Functions.RemoveMoney('bank', vehicle_price, 'vehicle-bought')
						xPlayer.Functions.AddMoney('bank', vehicle_price, 'vehicle-sole')

						TriggerClientEvent('QBCore:Notify', _source, "You successfully sold the vehicle <b>"..model.."</b> with the plate number <b>"..plate.."</b>", 'success')
						TriggerClientEvent('QBCore:Notify', target, "You successfully bought the vehicle <b>"..model.."</b> with the plate number <b>"..plate.."</b>", 'success')

						if Webhook ~= '' then
							sellVehicleWebhook(webhookData)
						end
					end
				end)
			else
				TriggerClientEvent('QBCore:Notify', _source, target_name.." doesn't have enough money to buy your vehicle", 'error')
				TriggerClientEvent('QBCore:Notify', target, "You don't have enough money to buy "..source_name.."'s vehicle", 'error')
			end
		else
			TriggerClientEvent('QBCore:Notify', _source, "The vehicle with the plate number <b>"..plate.."</b> isn't yours", 'error')
			TriggerClientEvent('QBCore:Notify', target, source_name.." tried to sell you a vehicle he doesn't owns", 'error')
		end
	else
		if result[1] ~= nil then
			MySQL.Async.execute('UPDATE player_vehicles SET citizenid = @target, license = @license WHERE citizenid = @owner AND plate = @plate', {
				['@owner'] = xPlayer.PlayerData.citizenid,
				['@target'] = tPlayer.PlayerData.citizenid,
				['@plate'] = plate,
				['@license'] = tPlayer.PlayerData.license
			}
			, function (result2)
				if result2 ~= 0 then
					TriggerClientEvent('QBCore:Notify', _source, "You successfully sold the vehicle <b>"..model.."</b> with the plate number <b>"..plate.."</b>", 'success')
					TriggerClientEvent('QBCore:Notify', target, "You successfully bought the vehicle <b>"..model.."</b> with the plate number <b>"..plate.."</b>", 'success')

					if Webhook ~= '' then
						sellVehicleWebhook(webhookData)
					end
				end
			end)
		else
			TriggerClientEvent('QBCore:Notify', _source, "The vehicle with the plate number <b>"..plate.."</b> isn't yours", 'error')
			TriggerClientEvent('QBCore:Notify', target, source_name.." tried to sell you a vehicle he doesn't owns", 'error')
		end
	end
end)

QBCore.Functions.CreateCallback('dx-vehiclecontract:GetTargetName', function(source, cb, targetid)
	local target = QBCore.Functions.GetPlayer(targetid)
	local targetname = target.PlayerData.charinfo.firstname.." "..target.PlayerData.charinfo.lastname

	cb(targetname)
end)

RegisterServerEvent('dx-vehiclecontract:SendVehicleInfo')
AddEventHandler('dx-vehiclecontract:SendVehicleInfo', function(description, price)
	local _source = source
	local xPlayer = QBCore.Functions.GetPlayer(_source)

	TriggerClientEvent('dx-vehiclecontract:GetVehicleInfo', _source, xPlayer.PlayerData.charinfo.firstname.." "..xPlayer.PlayerData.charinfo.lastname, os.date(Config.DateFormat), description, price, _source)
end)

RegisterServerEvent('dx-vehiclecontract:SendContractToBuyer')
AddEventHandler('dx-vehiclecontract:SendContractToBuyer', function(data)
	local _source = source
	local xPlayer = QBCore.Functions.GetPlayer(_source)

	TriggerClientEvent("dx-vehiclecontract:OpenContractOnBuyer", data.targetID, data)
	TriggerClientEvent('dx-vehiclecontract:startContractAnimation', data.targetID)

	if Config.RemoveContractAfterUse then
		xPlayer.Functions.RemoveItem('contract', 1)
		TriggerClientEvent('inventory:client:ItemBox', _source, QBCore.Shared.Items['contract'], "remove")
	end
end)

QBCore.Functions.CreateUseableItem("contract", function(source, item)
    local _source = source
	TriggerClientEvent('dx-vehiclecontract:OpenContractInfo', _source)
	TriggerClientEvent('dx-vehiclecontract:startContractAnimation', _source)
end)

-------------------------- SELL VEHICLE WEBHOOK

function sellVehicleWebhook(data)
	local information = {
		{
			["color"] = Config.sellVehicleWebhookColor,
			["author"] = {
				["icon_url"] = Config.IconURL,
				["name"] = Config.ServerName..' - Logs',
			},
			["title"] = 'VEHICLE SALE',
			["description"] = '**Vehicle: **'..data.model..'**\nPlate: **'..data.plate..'**\nBuyer name: **'..data.target_name..'**\nSeller name: **'..data.source_name..'**\nPrice: **'..data.vehicle_price..'€',

			["footer"] = {
				["text"] = os.date(Config.WebhookDateFormat),
			}
		}
	}
	PerformHttpRequest(Webhook, function(err, text, headers) end, 'POST', json.encode({username = Config.BotName, embeds = information}), {['Content-Type'] = 'application/json'})
end