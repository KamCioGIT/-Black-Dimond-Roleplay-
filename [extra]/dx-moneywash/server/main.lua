local QBCore = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function()
    Config.CurrentLaundrette = math.random(1, #Config.Locations["laundrette"])
end)

QBCore.Functions.CreateCallback('dx-moneywash:server:GetData', function(source, cb)
    local LaundretteData = {
        CurrentLaundrette = Config.CurrentLaundrette
    }
    cb(LaundretteData)
end)

QBCore.Functions.CreateUseableItem("mc_key", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    local LabKey = item.info.lab ~= nil and item.info.lab or 1

    TriggerClientEvent('dx-moneywash:client:UseLaundretteKey', source, LabKey)
end)

function GenerateRandomLaundrette()
    local Laundrette = math.random(1, #Config.Locations["laundrette"])
    return Laundrette
end

RegisterNetEvent("dx-moneywash:server:checkInv")
AddEventHandler("dx-moneywash:server:checkInv", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

        if Player.Functions.GetItemByName('markedbills') ~= nil then
            local amt = Player.Functions.GetItemByName('markedbills').amount
            TriggerClientEvent('dx-moneywash:client:startTimer', src, amt)
            TriggerClientEvent('QBCore:Notify', src, 'You put the bills in the washer.', 'success')
            Player.Functions.RemoveItem('markedbills', amt)
        else
            TriggerClientEvent('QBCore:Notify', src, 'You have no marked bills.', 'error') 
        end
end)
-- itemData.info.worth
RegisterNetEvent("dx-moneywash:server:giveMoney")
AddEventHandler("dx-moneywash:server:giveMoney", function(amt)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    payment = math.random(3000,5000)
    Player.Functions.AddMoney('cash', payment*amt)
end)
