function LoadTattoos(src)
    local identifier = GetIdentifier(src)

    if Config.Framework == 'esx' or Config.Framework == 'oldesx' then
        local parameters = {  ['@identifier'] = identifier}
        local user =  ExecuteSql('SELECT tattoo FROM users WHERE identifier = @identifier', parameters)
        if user[1] then
            if not user[1].tattoo then
                user[1].tattoo = {}
            else
                user[1].tattoo = json.decode(user[1].tattoo)
            end
            TriggerClientEvent("codem-appearance:LoadTattoos", src, user[1].tattoo)
        end
    else
        local parameters = {  ['@identifier'] = identifier}
        local user =  ExecuteSql('SELECT tattoo FROM players WHERE citizenid = @identifier', parameters)
        if user[1] then
            if not user[1].tattoo then
                user[1].tattoo = {}
            else
                user[1].tattoo = json.decode(user[1].tattoo)
            end
            TriggerClientEvent("codem-appearance:LoadTattoos", src, user[1].tattoo)

        end
    end
end
RegisterServerEvent("codem-appearance:RemoveTattoo")
AddEventHandler("codem-appearance:RemoveTattoo", function(tattoo)
    local src = source
    local identifier = GetIdentifier(src)
    if Config.Framework == 'esx' or Config.Framework == 'oldesx' then
        local parameters = {  ['@identifier'] = identifier}
      
        local user =  ExecuteSql('SELECT tattoo FROM users WHERE identifier = @identifier', parameters)
        if user[1] then

            if not user[1].tattoo then
                user[1].tattoo = {}
            else
                user[1].tattoo = json.decode(user[1].tattoo)
            end
            for _,v in pairs(user[1].tattoo) do
                if v.hash == tattoo.HashNameFemale or v.hash == tattoo.HashNameMale then
                    table.remove(user[1].tattoo, _)
                end
            end
            local parameters = { ['@tattoo'] = json.encode(user[1].tattoo),  ['@identifier'] = identifier}
            ExecuteSql('UPDATE users SET tattoo = @tattoo WHERE identifier = @identifier', parameters)
            LoadTattoos(src)
        end
    else
        local parameters = {  ['@identifier'] = identifier}
        local user =  ExecuteSql('SELECT tattoo FROM players WHERE citizenid = @identifier', parameters)
        if user[1] then
            if not user[1].tattoo then
                user[1].tattoo = {}
            else
                user[1].tattoo = json.decode(user[1].tattoo)
            end
            for _,v in pairs(user[1].tattoo) do
                if v.hash == tattoo.HashNameFemale or v.hash == tattoo.HashNameMale then
                    table.remove(user[1].tattoo, _)
                end
            end
            local parameters = { ['@tattoo'] = json.encode(user[1].tattoo),  ['@identifier'] = identifier}
            ExecuteSql('UPDATE players SET tattoo = @tattoo WHERE citizenid = @identifier', parameters)
            LoadTattoos(src)
        end
    end

end)

RegisterServerEvent("codem-appearance:LoadTattoos")
AddEventHandler("codem-appearance:LoadTattoos", function()
    local src = source
    LoadTattoos(src)
end)

RegisterServerEvent("codem-appearance:RemoveTattooZone")
AddEventHandler("codem-appearance:RemoveTattooZone", function(zones)
    local src = source
    local identifier = GetIdentifier(src)
    if Config.Framework == 'esx' or Config.Framework == 'oldesx' then
        local parameters = { ['@identifier'] = identifier}
        local user =  ExecuteSql('SELECT tattoo FROM users WHERE identifier = @identifier', parameters)
        if user[1] then
            if not user[1].tattoo then
                user[1].tattoo = {}
            else
                user[1].tattoo = json.decode(user[1].tattoo)
            end
            for __,zone in pairs(zones) do
                for _,v in pairs(user[1].tattoo) do
                    if zone == v.zone then
                        user[1].tattoo[_] = nil
                    end 
                end
            end

            for _,v in pairs(user[1].tattoo) do
                if v == nil then
                    table.remove(user[1].tattoo, _)
                end
            end

            local parameters = { ['@tattoo'] = json.encode(user[1].tattoo),  ['@identifier'] = identifier}
            ExecuteSql('UPDATE users SET tattoo = @tattoo WHERE identifier = @identifier', parameters)
            LoadTattoos(src)
        end
    else
        local parameters = {  ['@identifier'] = identifier}
        local user =  ExecuteSql('SELECT tattoo FROM players WHERE citizenid = @identifier', parameters)
        if user[1] then
            if not user[1].tattoo then
                user[1].tattoo = {}
            else
                user[1].tattoo = json.decode(user[1].tattoo)
            end
            for _,v in pairs(user[1].tattoo) do
                for __,vv in pairs(zones) do
                    if vv == v.zone then
                        table.remove(user[1].tattoo, _)
                    end 
                end
            end
            local parameters = { ['@tattoo'] = json.encode(user[1].tattoo),  ['@identifier'] = identifier}
            ExecuteSql('UPDATE players SET tattoo = @tattoo WHERE citizenid = @identifier', parameters)
            LoadTattoos(src)
        end
    end
end)

RegisterServerEvent("codem-appearance:SaveTattoo")
AddEventHandler("codem-appearance:SaveTattoo", function(basket)
    local src = source
    local identifier = GetIdentifier(src)
    
    if Config.Framework == 'esx' or Config.Framework == 'oldesx' then
        local parameters = {  ['@identifier'] = identifier}
        local user =  ExecuteSql('SELECT tattoo FROM users WHERE identifier = @identifier', parameters)
        if user[1] then
            if not user[1].tattoo then
                user[1].tattoo = {}
            else
                user[1].tattoo = json.decode(user[1].tattoo)
            end
            for _,v in pairs(basket) do
                table.insert(user[1].tattoo, v)
            end
            local parameters = { ['@tattoo'] = json.encode(user[1].tattoo),  ['@identifier'] = identifier}
            ExecuteSql('UPDATE users SET tattoo = @tattoo WHERE identifier = @identifier', parameters)
            LoadTattoos(src)
            
        end
    else
        local parameters = {  ['@identifier'] = identifier}
        local user =  ExecuteSql('SELECT tattoo FROM players WHERE citizenid = @identifier', parameters)
        if user[1] then
            if not user[1].tattoo then
                user[1].tattoo = {}
            else
                user[1].tattoo = json.decode(user[1].tattoo)
            end
            for _,v in pairs(basket) do
                table.insert(user[1].tattoo, v)
            end
            local parameters = { ['@tattoo'] = json.encode(user[1].tattoo),  ['@identifier'] = identifier}
            ExecuteSql('UPDATE players SET tattoo = @tattoo WHERE citizenid = @identifier', parameters)
            LoadTattoos(src)
        end
    end
end)