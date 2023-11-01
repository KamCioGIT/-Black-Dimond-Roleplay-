local Webhook = {
    ['trunk'] = '',
    ['glovebox'] = '',
    ['stash'] = '',
    ['drop'] = '',
    ['give'] = '',
    ['additem'] = '',
    ['player'] = '',
    ['shop'] = '',
}


local Colors = {
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ["lightgreen"] = 65309,
}

Citizen.CreateThread(function()
    while Framework == nil do
        Citizen.Wait(0)
    end
    if (Config.Framework == "new-qb" or Config.Framework == "old-qb") then
        Framework.Functions.CreateCallback('codem-inventory:CheckIsPlayerDead', function(source, cb, id)
            local Player = Framework.Functions.GetPlayer(id)
            local isDead = false
            if Player and (Player.PlayerData.metadata["isdead"] or Player.PlayerData.metadata["inlaststand"]) then
                isDead = true
            end
            cb(isDead)
        end)
    end
end)

Citizen.CreateThread(function()
    while Framework == nil do
        Citizen.Wait(0)
    end
    if (Config.Framework == "new-qb" or Config.Framework == "old-qb") then
        Framework.Commands.Add(Config.Commands["additem"], "Give An Item (Admin Only)",
            { { name = "id",   help = "Player ID" }, { name = "item", help = "Name of the item (not a label)" },
                { name = "amount", help = "Amount of items" } }, false, function(source, args)
                local id = tonumber(args[1])
                local Player = Framework.Functions.GetPlayer(id)
                local amount = tonumber(args[3]) or 1
                local itemData = Config.Itemlist[tostring(args[2]):lower()]
                if Player then
                    if itemData then
                        -- check iteminfo
                        local info = {}
                        if itemData["name"] == "id_card" then
                            for i = 1, amount do
                                info[i] = {}
                                info[i].citizenid = Player.PlayerData.citizenid
                                info[i].firstname = Player.PlayerData.charinfo.firstname
                                info[i].lastname = Player.PlayerData.charinfo.lastname
                                info[i].birthdate = Player.PlayerData.charinfo.birthdate
                                info[i].gender = Player.PlayerData.charinfo.gender
                                info[i].nationality = Player.PlayerData.charinfo.nationality
                            end
                        elseif itemData["name"] == "driver_license" then
                            for i = 1, amount do
                                info[i] = {}
                                info[i].firstname = Player.PlayerData.charinfo.firstname
                                info[i].lastname = Player.PlayerData.charinfo.lastname
                                info[i].birthdate = Player.PlayerData.charinfo.birthdate
                                info[i].type = "Class C Driver License"
                            end
                        elseif itemData["name"] == "harness" then
                            for i = 1, amount do
                                info[i] = {}
                                info[i].uses = 20
                            end
                        elseif itemData["name"] == "markedbills" then
                            for i = 1, amount do
                                info[i] = {}
                                info[i].worth = math.random(5000, 10000)
                            end
                        elseif itemData["name"] == "labkey" then
                            for i = 1, amount do
                                info[i] = {}
                                info[i].lab = exports["qb-methlab"]:GenerateRandomLab()
                            end
                        elseif itemData["name"] == "bag" then
                            for i = 1, amount do
                                info[i] = {}
                                info[i].id = 'Bag - ' .. math.random(1, 999)
                            end
                        elseif itemData["name"] == "printerdocument" then
                            for i = 1, amount do
                                info[i] = {}
                                info[i].url =
                                "https://cdn.discordapp.com/attachments/870094209783308299/870104331142189126/Logo_-_Display_Picture_-_Stylized_-_Red.png"
                            end
                        end

                        if HSN.AddItem(id, itemData["name"], amount, false, info) then
                            local formatted = Config.Translate["itemadded"]:format(itemData["label"], GetPlayerName(id),
                                amount)
                            Config.SendMessage(formatted, false, "server", source)
                        else
                            Config.SendMessage(Config.Translate["notadded"], true, "server", source)
                        end
                    else
                        Config.SendMessage(Config.Translate["itemcantforund"], true, "server", source)
                    end
                else
                    Config.SendMessage(Config.Translate["playernotfound"], true, "server", source)
                end
            end, "admin")


        Framework.Commands.Add(Config.Commands["clearinv"], "Clear Player Inventory (Admin Only)",
            { { name = "id", help = "Player ID" } }, false, function(source, args)
                local id = tonumber(args[1])
                local Player = Framework.Functions.GetPlayer(id)
                if Player then
                    if PlayerInventory[Player.PlayerData.source] then
                        PlayerInventory[Player.PlayerData.source] = {}
                    end
                    HSN.SetMoney(Player.PlayerData.source)
                    Config.SendMessage(Config.Translate["inventorycleared"], false, "server", source)
                    HSN.SetInventory(Player.PlayerData.source)
                else
                    Config.SendMessage(Config.Translate["playernotfound"], true, "server", source)
                end
            end, "admin")
    else
        while Framework == nil do
            Wait(0)
        end
        Framework.RegisterCommand(Config.Commands["additem"], 'admin', function(xPlayer, args, showError)
            local source = xPlayer.source

            local id = tonumber(args.playerId.source)
            local item = args.item
            local itemData = Config.Itemlist[tostring(item):lower()]
            local count = args.count
            local Player = Framework.GetPlayerFromId(id)
            if Player then
                if itemData then
                    if HSN.AddItem(id, itemData["name"], count, false) then
                        local formatted = Config.Translate["itemadded"]:format(itemData["label"], GetPlayerName(id),
                            count)
                        Config.SendMessage(formatted, false, "server", source)
                    else
                        Config.SendMessage(Config.Translate["notadded"], true, "server", source)
                    end
                else
                    Config.SendMessage(Config.Translate["itemcantforund"], true, "server", source)
                end
            else
                Config.SendMessage(Config.Translate["playernotfound"], true, "server", source)
            end
            --args.playerId.addInventoryItem(args.item, args.count)
        end, true, {
            help = 'Give items to player',
            validate = true,
            arguments = {
                { name = 'playerId', help = 'playerid', type = 'player' },
                { name = 'item',     help = 'item',     type = 'item' },
                { name = 'count',    help = 'amount',   type = 'number' }
            }
        })

        Framework.RegisterCommand(Config.Commands["clearinv"], 'admin', function(xPlayer, args, showError)
                local source = xPlayer.source
                local id = tonumber(args.playerId)
                local Player = Framework.GetPlayerFromId(id)
                if Player then
                    if PlayerInventory[Player.source] then
                        PlayerInventory[Player.source] = {}
                    end
                    Config.SendMessage(Config.Translate["inventorycleared"], false, "server", source)
                    HSN.SetInventory(Player.source)
                else
                    Config.SendMessage(Config.Translate["playernotfound"], true, "server", source)
                end
            end, true,
            {
                help = 'Clear inventory',
                validate = true,
                arguments = { { name = 'playerId', help = 'playerid', type = 'player' } }
            })
    end
end)

Citizen.CreateThread(function()
    while Framework == nil do
        Citizen.Wait(0)
    end
    if (Config.Framework == "new-qb" or Config.Framework == "old-qb") then

        Framework.Functions.CreateUseableItem("id_card", function(source, item)
            local playerPed = GetPlayerPed(source)
            local playerCoords = GetEntityCoords(playerPed)
            local players = Framework.Functions.GetPlayers()
            for _, v in pairs(players) do
                local targetPed = GetPlayerPed(v)
                local dist = #(playerCoords - GetEntityCoords(targetPed))
                if dist < 3.0 then
                    local gender = "Man"
                    if item.info[1].gender == 1 then
                        gender = "Woman"
                    end
                    TriggerClientEvent('chat:addMessage', v, {
                        template =
                        '<div class="chat-message advert"><div class="chat-message-body"><strong>{0}:</strong><br><br> <strong>Civ ID:</strong> {1} <br><strong>First Name:</strong> {2} <br><strong>Last Name:</strong> {3} <br><strong>Birthdate:</strong> {4} <br><strong>Gender:</strong> {5} <br><strong>Nationality:</strong> {6}</div></div>',
                        args = {
                            "ID Card",
                            item.info[1].citizenid,
                            item.info[1].firstname,
                            item.info[1].lastname,
                            item.info[1].birthdate,
                            gender,
                            item.info[1].nationality
                        }
                    }
                    )
                end
            end
        end)

        Framework.Functions.CreateUseableItem("bag", function(source, item)
            if item.info and item.info[1] and item.info[1].id then
                TriggerClientEvent("codem-inventory:OpenBag", source, item.info[1].id, Config.Bag.weight, Config.Bag
                    .slot)
            else
                print("unknown id for bag")
            end
        end)


        Framework.Functions.CreateUseableItem("driver_license", function(source, item)
            local playerPed = GetPlayerPed(source)
            local playerCoords = GetEntityCoords(playerPed)
            local players = Framework.Functions.GetPlayers()
            for _, v in pairs(players) do
                local targetPed = GetPlayerPed(v)
                local dist = #(playerCoords - GetEntityCoords(targetPed))
                if dist < 3.0 then
                    TriggerClientEvent('chat:addMessage', v, {
                        template =
                        '<div class="chat-message advert"><div class="chat-message-body"><strong>{0}:</strong><br><br> <strong>First Name:</strong> {1} <br><strong>Last Name:</strong> {2} <br><strong>Birth Date:</strong> {3} <br><strong>Licenses:</strong> {4}</div></div>',
                        args = {
                            "Drivers License",
                            item.info[1].firstname,
                            item.info[1].lastname,
                            item.info[1].birthdate,
                            item.info[1].type
                        }
                    }
                    )
                end
            end
        end)
    end
end)

RegisterNetEvent('codem-inventory:CreateLog', function(title, color, message, source, webhooktype)
    if not Config.UseDiscordWebhooks then return end
    local logQueue = {}
    if not webhooktype then webhooktype = "additem" end
    local webHook = Webhook[webhooktype]
    if not source then source = "Unknown" end
    local embedData = {
        {
            ['title'] = title or false,
            ['color'] = Colors[color] or Colors['default'] or 14423100,
            ['footer'] = {
                ['text'] = os.date('%c') or false,
            },
            ['description'] = message .. ' Player ID : ' .. "**" .. source .. "**" or false,
            ['author'] = {
                ['name'] = 'mInventory Logs',
                ['icon_url'] = 'https://cdn.discordapp.com/attachments/1063175024992858253/1149113090382762126/c298422238593b82857b5dc916dce30ba6483031.png?ex=64fa5276&is=64f900f6&hm=6bb8b4a0daf6dfcaf61cb55b153db06929b449ef8646d9b1e5990098bf95b9bd&',
            },
        }
    }
    logQueue = { webhook = webHook, data = embedData }
    local postData = { username = 'Codem Inventory Log', embeds = {} }
    postData.embeds = embedData
    PerformHttpRequest(webHook, function() end, 'POST', json.encode(postData), { ['Content-Type'] = 'application/json' })
end)

Citizen.CreateThread(function()
    while Framework == nil do
        Wait(0)
    end
    HSN.MoneyCheck = function(src, money)
        money = tonumber(money)
        if Config.Framework == "new-qb" or Config.Framework == "old-qb" then
            local Player = Framework.Functions.GetPlayer(src)
            if not Player then
                return false
            end
            local bank = Player.PlayerData.money['bank']
            local cash = Player.PlayerData.money['cash']

            if tonumber(bank) >= tonumber(money) then
                Player.Functions.RemoveMoney('bank', money)
                return true
            elseif tonumber(cash) >= tonumber(money) then
                Player.Functions.RemoveMoney('cash', money)
                return true
            end
            return false
        else
            local Player = Framework.GetPlayerFromId(src)
            if not Player then
                return false
            end
            local bank = Player.getAccount('bank').money
            local cash = Player.getMoney()
            if (bank >= money) then
                Player.removeAccountMoney("bank", money)
                return true
            elseif (cash >= money) then
                Player.removeMoney(money)
                return true
            end
            return false
        end
    end
end)


exports("GetInventoryItems", function(invtype, id)
    if (invtype == "Stash") then
        if Stashs[id] then
            return Stashs[id].items
        else
            return nil
        end
    elseif invtype == "Glovebox" then
        if Gloveboxes[id] then
            return Gloveboxes[id].items
        else
            return nil
        end
    elseif invtype == "Trunk" then
        if Trunks[id] then
            return Trunks[id].items
        else
            return nil
        end
    end
end)


Citizen.CreateThread(function()
    while Framework == nil do
        Wait(0)
    end
    if Config.Framework == "new-qb" or Config.Framework == "old-qb" then
        Framework.Functions.CreateCallback('codem-inventory:GetInventoryItems', function(source, cb, invtype, id)
            if (invtype == "Stash") then
                if Stashs[id] then
                    cb(Stashs[id])
                    return
                else
                    return nil
                end
            elseif invtype == "Glovebox" then
                if Gloveboxes[id] then
                    cb(Gloveboxes[id].items)
                    return
                else
                    return nil
                end
            elseif invtype == "Trunk" then
                if Trunks[id] then
                    cb(Trunks[id].items)
                    return
                else
                    return nil
                end
            end
        end)
    else
        Framework.RegisterServerCallback('codem-inventory:GetInventoryItems', function(source, cb, invtype, id)
            if (invtype == "Stash") then
                if Stashs[id] then
                    cb(Stashs[id])
                    return
                else
                    return nil
                end
            elseif invtype == "Glovebox" then
                if Gloveboxes[id] then
                    cb(Gloveboxes[id].items)
                    return
                else
                    return nil
                end
            elseif invtype == "Trunk" then
                if Trunks[id] then
                    cb(Trunks[id].items)
                    return
                else
                    return nil
                end
            end
        end)
    end
end)


exports("SaveStashItems", function(id, items)
    --SaveItems("Stash", id)
    if (Stashs[id] == nil) then
        print("Stash cant found")
        return
    end
    if next(items) == nil then
        items = {}
    end
    Stashs[id].items = items
    SaveItems("Stash", id)
end)





SaveItems = function(invtype, invid)
    if (invtype == "Stash") then
        if Stashs[invid] then
            if (Stashs[invid].items) then
                local result = HSN.ExecuteSql("SELECT * FROM codem_invdata WHERE name = '" ..
                    invid .. "' AND type = '" .. invtype .. "'")
                if result[1] == nil then
                    HSN.ExecuteSql("INSERT INTO codem_invdata (name, type, items) VALUES ('" ..
                        invid .. "', '" .. invtype .. "', '" .. json.encode(Stashs[invid].items) .. "')")
                else
                    HSN.ExecuteSql("UPDATE codem_invdata SET items ='" ..
                        json.encode(Stashs[invid].items) .. "'  WHERE name = '" .. invid .. "'")
                end
            end
        end
    elseif (invtype == "Glovebox") then
        if Gloveboxes[invid] then
            if (Gloveboxes[invid].items) then
                local result = HSN.ExecuteSql("SELECT * FROM codem_invdata WHERE name = '" ..
                    invid .. "' AND type = '" .. invtype .. "'")
                if result[1] == nil then
                    HSN.ExecuteSql("INSERT INTO codem_invdata (name, type, items) VALUES ('" ..
                        invid .. "', '" .. invtype .. "', '" .. json.encode(Gloveboxes[invid].items) .. "')")
                else
                    HSN.ExecuteSql("UPDATE codem_invdata SET items ='" ..
                        json.encode(Gloveboxes[invid].items) .. "'  WHERE name = '" .. invid .. "'")
                end
            end
        end
    elseif (invtype == "Trunk") then
        if Trunks[invid] then
            if (Trunks[invid].items) then
                local result = HSN.ExecuteSql("SELECT * FROM codem_invdata WHERE name = '" ..
                    invid .. "' AND type = '" .. invtype .. "'")
                if result[1] == nil then
                    HSN.ExecuteSql("INSERT INTO codem_invdata (name, type, items) VALUES ('" ..
                        invid .. "', '" .. invtype .. "', '" .. json.encode(Trunks[invid].items) .. "')")
                else
                    HSN.ExecuteSql("UPDATE codem_invdata SET items ='" ..
                        json.encode(Trunks[invid].items) .. "'  WHERE name = '" .. invid .. "'")
                end
            end
        end
    elseif (invtype == "player") then
        local identifier = HSN.GetIdentifier(invid)
        if PlayerInventory[invid] then
            local result = HSN.ExecuteSql("SELECT * FROM codem_invdata WHERE name = '" ..
                identifier .. "' AND type = '" .. invtype .. "'")
            if result[1] == nil then
                HSN.ExecuteSql("INSERT INTO codem_invdata (name, type, items) VALUES ('" ..
                    identifier .. "', '" .. invtype .. "', '" .. json.encode(PlayerInventory[invid]) .. "')")
            else
                HSN.ExecuteSql("UPDATE codem_invdata SET items ='" ..
                    json.encode(PlayerInventory[invid]) .. "'  WHERE name = '" .. identifier .. "'")
            end
        end
    end
end


RegisterServerEvent("codem-inventory:SaveItems")
AddEventHandler("codem-inventory:SaveItems", function(invtype, invid)
    SaveItems(invtype, invid)
end)
