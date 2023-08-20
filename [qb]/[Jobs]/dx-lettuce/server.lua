--QBCore = nil

--TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)

local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("hell_mushroomfarmer:sell")
AddEventHandler("hell_mushroomfarmer:sell", function()
	  local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local money = math.random(150,250)
    local letcount = math.random(3,5)
    Player.Functions.AddMoney("cash", money)
    TriggerClientEvent('QBCore:Notify', src, 'You got some money')
end)