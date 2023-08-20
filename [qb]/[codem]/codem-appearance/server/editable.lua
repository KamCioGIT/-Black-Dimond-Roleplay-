RegisterServerEvent("qb-clothes:loadPlayerSkin", function()
    local src = source
    TriggerClientEvent("qb-clothes:loadSkin", src)
end)

function PayBasket(source, price)
    local success = false
    local Player = GetPlayer(source)
    if Config.Framework == 'esx' or Config.Framework == 'oldesx' then
        local money = GetPlayerMoney(source)
        if money >= price then
            success = true
            Player.removeMoney(price)
        end
    else
        if Player.Functions.RemoveMoney('cash', price) then
            success = true
        end
    end
    return success
end

CreateThread(function()

    WaitCore()

    if Config.Framework == 'esx' or Config.Framework == 'oldesx' then
       
        RegisterCallback("esx_skin:getPlayerSkin", function(source, cb)
            local Player = GetPlayer(source)
            local identifier = GetIdentifier(source)
            local parameters = { ['@identifier'] = identifier }
            local users = ExecuteSql('SELECT skin FROM users WHERE identifier = @identifier', parameters)
            local user, skin = users[1]
    
            local jobSkin = {
                skin_male   = Player.job.skin_male,
                skin_female = Player.job.skin_female
            }
    
            if user.skin then
                skin = json.decode(user.skin)
            end
    
            cb(skin, jobSkin)
        end)     
    end
    RegisterCallback("codem-appearance:PayBasket", function(source, cb, price)

        cb(PayBasket(source, price))
    end)
    
    RegisterCallback("codem-appearance:SaveSkin", function(source, cb, data)
        local src = source
        local identifier = GetIdentifier(src)
        if Config.Framework == 'esx' or Config.Framework == 'oldesx' then
            local parameters = { ['@skin'] = json.encode(data.skin),  ['@identifier'] = identifier}
            ExecuteSql('UPDATE users SET skin = @skin WHERE identifier = @identifier', parameters)
        else
            local parameters = { ['@citizenid'] = identifier}
            ExecuteSql('DELETE FROM playerskins WHERE citizenid = @citizenid', parameters)
            local parameters = { ['@citizenid'] = identifier, ['@model'] = data.model, ['@skin'] = json.encode(FormatDataToQbCore(data.skin)), ['@active'] = 1}
            ExecuteSql('INSERT INTO playerskins (citizenid, model, skin, active) VALUES (@citizenid, @model, @skin, @active)', parameters)
            TriggerClientEvent("codem-appearance:migrated", src)
        end
        cb(true)
    end)
    RegisterCallback("codem-appearance:GetSkin", function(source, cb)
        local Player = GetPlayer(source)
        local identifier = GetIdentifier(source)
        if Config.Framework == 'esx' or Config.Framework == 'oldesx' then
            local parameters = { ['@identifier'] = identifier }
            local users = ExecuteSql('SELECT skin FROM users WHERE identifier = @identifier', parameters)
            local user, skin = users[1]
            if user.skin then
                skin = json.decode(user.skin)
            end
            cb(skin)
        else
            local parameters = { ['@identifier'] = identifier }
            local users = ExecuteSql('SELECT * FROM playerskins WHERE citizenid = @identifier', parameters)
            local user, skin = users[1]
            if user and user.skin then
                skin = json.decode(user.skin)
            end
            cb(skin)
        end
    end)
    RegisterCallback("codem-appearance:GetSkinByIdentifier", function(source, cb, identifier)
        local Player = GetPlayer(source)
        if Config.Framework == 'esx' or Config.Framework == 'oldesx' then
            local parameters = { ['@identifier'] = identifier }
            local users = ExecuteSql('SELECT skin FROM users WHERE identifier = @identifier', parameters)
            local user, skin = users[1]
            if user.skin then
                skin = json.decode(user.skin)
            end
            cb(skin)
        else
            local parameters = { ['@identifier'] = identifier }
            local users = ExecuteSql('SELECT * FROM playerskins WHERE citizenid = @identifier', parameters)
            local user, skin = users[1]
            if user.skin then
                skin = json.decode(user.skin)
            end
            cb(skin)
        end
    end)
    RegisterCallback("qb-clothing:server:getOutfits", function(source, cb)
        local src = source
        local Player = GetPlayer(src)
        local anusVal = {}
        local identifier = GetIdentifier(src)
        local parameters = { ['@identifier'] = identifier }

        local result = ExecuteSql('SELECT * FROM codem_saved_clothings WHERE citizenid =  @identifier', parameters)
        if result[1] ~= nil then
            local formattedData = {}
            for k, v in pairs(result) do
                result[k].skin  = json.decode(result[k].skin)
                table.insert(formattedData, {
                    citizenid =  result[k].identifier,
                    skin = result[k].skin,
                    outfitname = result[k].name,
                    outfitId = result[k].outfitId,
                })
            end
            anusVal = formattedData
            cb(anusVal)
        end
        cb(anusVal)
    end)

end)