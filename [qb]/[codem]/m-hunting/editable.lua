Editable = {}
Framework = nil
Citizen.CreateThread(function()
    Framework = GetFrameworkObject()
end)

Editable.GetUser = function(source)
    local src = source
    if Config.Framework == "new-qb" or Config.Framework == 'old-qb' then
        return Framework.Functions.GetPlayer(src)
    elseif Config.Framework == 'new-esx' or Config.Framework == "old-esx" then
        return Framework.GetPlayerFromId(src)
    end
end


Editable.GetUserItemList = function(source) 
    local user = Editable.GetUser(source)
    ItemList = {}
    if Config.Inventory == 'qb-inventory' then
        if Config.Framework == "new-qb" then
            local inventory = user.PlayerData.items
            for k,v in pairs(inventory) do
                if (Config.ItemPrices[v.name] ~= nil) then
                    ItemList[#ItemList+1] = {
                        itemname = v.name,
                        count = v.amount,
                        type = Config.ItemPrices[v.name].type,
                        label = v.label
                    }
                end
            end
        elseif Config.Framework == 'old-qb' then
            local inventory = user.PlayerData.items
            for k,v in pairs(inventory) do
                if (Config.ItemPrices[v.name] ~= nil) then
                    ItemList[#ItemList+1] = {
                        itemname = v.name,
                        count = v.amount,
                        type = Config.ItemPrices[v.name].type,
                        label = v.label
                    }
                end
            end
        else

        end
    elseif Config.Inventory == "ox_inventory" then
        local inventory = exports.ox_inventory:GetInventory(source, false)
        for k,v in pairs(inventory.items) do
            if (Config.ItemPrices[v.name] ~= nil) then
                ItemList[#ItemList+1] = {
                    itemname = v.name,
                    count = v.count,
                    type = Config.ItemPrices[v.name].type,
                    label = v.label
                }
            end
        end
    end
    return ItemList
end

Editable.AddItem = function(source, item, amount)
    local src = source
    local user = Editable.GetUser(src)
    if Config.Inventory == "qb-inventory" then
        if item == Config.WeaponHash then
            info = {
                ammo = Config.Ammo
            }
            user.Functions.AddItem(item, amount, false, info)
            return
        end
        user.Functions.AddItem(item, amount)
    elseif Config.Inventory == "ox_inventory" then
        if item == Config.WeaponHash then
            info = {
                ammo = Config.Ammo
            }
            exports.ox_inventory:AddItem(source, item, info)
            return
        end
        exports.ox_inventory:AddItem(source, item, amount)
    end
end

Editable.RemoveItem = function(source, item, amount)
    local src = source
    local user = Editable.GetUser(src)
    if Config.Inventory == "qb-inventory" then
        user.Functions.RemoveItem(item, amount)
    elseif Config.Inventory == "ox_inventory" then
        exports.ox_inventory:RemoveItem(source, item, amount)
    end
end

Editable.GetName = function(source)
    local Player = Editable.GetUser(source)
    if Config.UseCharacterName then
        if Config.Framework == "new-qb" or Config.Framework == 'old-qb' then
            return Player.PlayerData.charinfo.firstname..' '..Player.PlayerData.charinfo.lastname
        else
            return GetPlayerCharacterNameESX(source) -- esx get player name
        end
    else
        return GetPlayerName(source)
    end 
end

GetPlayerCharacterNameESX = function(source)
    local Player = Editable.GetUser(source)
    identifier = Player.identifier
    local result = HSN.ExecuteSql("SELECT * FROM users WHERE identifier = '"..identifier.."'")
    if result[1] then 
        return result[1].firstname..' '..result[1].lastname 
    end;
end