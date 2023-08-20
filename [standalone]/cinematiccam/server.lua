local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('CinematicCam:requestPermissions')
AddEventHandler('CinematicCam:requestPermissions', function()
	local isWhitelisted = false
	local perm = QBCore.Functions.HasPermission(source, "admin")
	
	if QBCore.Functions.HasPermission(source, "admin") then
		TriggerClientEvent('CinematicCam:receivePermissions', source, true)
	else
		TriggerClientEvent('CinematicCam:receivePermissions', source, false)
	end
	
end)
