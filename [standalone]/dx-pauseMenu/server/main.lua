if dx.Framework == "qb" then
    QBCore = exports['qb-core']:GetCoreObject()
elseif dx.Framework == "oldqb" then 
    QBCore = nil
    TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
end

local connectedPlayersCount = 0
local maxPlayers = GetConvarInt('sv_maxclients', 32)

RegisterServerEvent('dx-pauseMenu:dropPlayer')
AddEventHandler('dx-pauseMenu:dropPlayer', function()
	DropPlayer(source, 'You disconnected from the server.')
end)

QBCore.Functions.CreateCallback('dx-pauseMenu:getDetails', function(source, cb)
    local identifier = GetPlayerIdentifiers(source)[1]
    local steamid = tonumber(identifier:gsub("steam:",""), 16)
    local callback = { apiKey = SteamApiKey, steamid = steamid, maxPlayers = maxPlayers, connectedPlayers = connectedPlayersCount }
    cb(callback)
end)

Citizen.CreateThread(function()
    while true do
        connectedPlayersCount = #GetPlayers()
        Wait(dx.ServerWait)
    end
end)
