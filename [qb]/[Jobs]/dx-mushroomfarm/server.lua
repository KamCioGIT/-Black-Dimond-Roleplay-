local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("dx-mushroomfarmer:sell")
AddEventHandler("dx-mushroomfarmer:sell", function()
    local _source = source
    local xPlayer  = QBCore.Functions.GetPlayer(_source)
    local money = math.random(80,500)
    xPlayer.Functions.AddMoney("cash", money)
    TriggerClientEvent('QBCore:Notify', _source, "You recieved $"..money.." for selling mushrooms")
end)