local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('dx-changeplate:checkowned', function(source, cb, plate)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local result = exports.oxmysql:executeSync(
        'SELECT plate, citizenid FROM player_vehicles WHERE plate = ? AND citizenid = ?',
        {plate, xPlayer.PlayerData.citizenid})
    if result[1] ~= nil and result[1].plate == plate and result[1].citizenid == xPlayer.PlayerData.citizenid then
        if xPlayer.Functions.GetMoney("bank") >= 5000 then
            xPlayer.Functions.RemoveMoney("bank", 5000, "Plate-Changer")
            cb(true)
        else
            TriggerClientEvent('QBCore:Notify', source, "You don't have enough money!", "error")
        end
    else
        TriggerClientEvent('QBCore:Notify', source, "You don't own this vehicle", "error")
        cb(false)
    end
end)

RegisterServerEvent('dx-changeplate:setplate')
AddEventHandler('dx-changeplate:setplate', function(plate, props)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent('QBCore:Notify', source, "Vehicle Plate changed successfully", "success")
    exports.oxmysql:executeSync("UPDATE `player_vehicles` SET `plate` = '" .. props.plate .. "', `mods` = '" ..
                                    json.encode(props) .. "' WHERE plate = ? AND citizenid = ?  ",
        {plate, xPlayer.PlayerData.citizenid})
end)
