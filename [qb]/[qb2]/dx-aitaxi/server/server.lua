local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('qb-taxi:payCab')
AddEventHandler('qb-taxi:payCab', function(meters)
	local src = source
	local xPlayer = QBCore.Functions.GetPlayer(src)
	xPlayer.Functions.RemoveMoney('bank', 100, 'taxi-payment')
	TriggerClientEvent('QBCore:Notify', src, 'That will be $100')
end)