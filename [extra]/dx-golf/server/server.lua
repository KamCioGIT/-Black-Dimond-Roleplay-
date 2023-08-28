local QBCore = exports['qb-core']:GetCoreObject()

RegisterCommand(
    'golf',
    function(source)
        TriggerClientEvent('avGolf:spawnBall', source, 'prop_golf_ball')
    end,
    false
)

RegisterCommand(
    'golfyellow',
    function(source)
        TriggerClientEvent('avGolf:spawnBall', source, 'prop_golf_ball_p2')
    end,
    false
)

RegisterCommand(
    'golfgreen',
    function(source)
        TriggerClientEvent('avGolf:spawnBall', source, 'prop_golf_ball_p3')
    end,
    false
)
RegisterCommand(
    'golfpink',
    function(source)
        TriggerClientEvent('avGolf:spawnBall', source, 'prop_golf_ball_p4')
    end,
    false
)

RegisterNetEvent('avGolf:saveHit')
AddEventHandler(
    'avGolf:saveHit',
    function(distance)
        local source = source
        local identifier = getIdentifier(source)
        if identifier then
            distance = round2(distance, 2)

            if Config.Toplist.Enabled then
                MySQL.Async.fetchAll(
                    'SELECT * FROM golfhits WHERE identifier = @identifier',
                    {
                        ['@identifier'] = identifier
                    },
                    function(result)
                        if result[1] then
                            local savedDistance = result[1].distance
                            if distance > savedDistance then
                                TriggerClientEvent('QBCore:Notify', source, _('midmessage_newrecord', distance))
                                MySQL.Sync.execute(
                                    'UPDATE golfhits SET distance = @distance, date = @date WHERE identifier = @identifier',
                                    {
                                        ['@identifier'] = identifier,
                                        ['@distance'] = distance,
                                        ['@date'] = os.date('%x') .. ' (' .. os.date('%X') .. ')'
                                    }
                                )
                            end
                        else
                            TriggerClientEvent('QBCore:Notify', source, _('midmessage_newrecord', distance))
                            MySQL.Sync.execute(
                                'INSERT INTO golfhits (identifier, name, distance, date) VALUES (@identifier, @name, @distance, @date)',
                                {
                                    ['@identifier'] = identifier,
                                    ['@distance'] = distance,
                                    ['@name'] = GetPlayerName(source),
                                    ['@date'] = os.date('%x') .. ' (' .. os.date('%X') .. ')'
                                }
                            )
                        end
                    end
                )
            else
                TriggerClientEvent('QBCore:Notify', source, _('midmessage_putball', distance))
            end
        end
    end
)

function round2(num, numDecimalPlaces)
    return tonumber(string.format('%.' .. (numDecimalPlaces or 0) .. 'f', num))
end

if Config.Toplist.Enabled then
    RegisterCommand(
        Config.Toplist.Command,
        function(source)
            MySQL.Async.fetchAll(
                string.format('SELECT * FROM golfhits order by distance desc limit %s', Config.Toplist.Count),
                {},
                function(result)
                    TriggerClientEvent('avGolf:leaderboard', source, result)
                end
            )
        end,
        false
    )
end

-- ONLY STANDALONE
function getIdentifier(source)
    local player = QBCore.Functions.GetPlayer(source)
    return player.PlayerData.citizenid
end

