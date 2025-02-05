Settings = {
    Framework = "QBCore", -- Esx or NewESX and QBCore or OldQBCore
    Voice = "pma-voice", --  pma-voice & saltychat & mumble-voip
    MaxFrequency = 500, --  Max Frequency
    ResetCommad = "radioreset",
    
    Language = {
        ["group"] = "GROUP",
        ["enter_frequency"] = "ENTER FREQUENCY",
        ["volume_settings"] = "VOLUME SETTINGS",
        ["radio_connet_number"] = "RADIO CONNECTED NUMBER",
        ["settings"] = "Settings",
        ["join"] = "Join",
        ["encrypted"] = "This frequency is encrypted",
        ["move"] = "Move"
    },

    OnlyJob = {
        [1] = {
            RadioCode = 1, 
            Jobs = {"police", "sheriff", "ambulance"},
        },
        [2] = {
            RadioCode = 2, 
            Jobs = {"police", "sheriff", "ambulance"},
        },
        [3] = {
            RadioCode = 3, 
            Jobs = {"ambulance"},
        },
        [4] = {
            RadioCode = 4, 
            Jobs = {"police"},
        },    
        [5] = {
            RadioCode = 5, 
            Jobs = {"sheriff"},
        }, 
    },
}


GetFramework = function()
    local Get = nil
    if Settings.Framework == "ESX" then
        while Get == nil do
            TriggerEvent('esx:getSharedObject', function(Set) Get = Set end)
            Citizen.Wait(0)
        end
    end
    if Settings.Framework == "NewESX" then
        Get = exports['es_extended']:getSharedObject()
    end
    if Settings.Framework == "QBCore" then
        Get = exports["qb-core"]:GetCoreObject()
    end
    if Settings.Framework == "OldQBCore" then
        while Get == nil do
            TriggerEvent('QBCore:GetObject', function(Set) Get = Set end)
            Citizen.Wait(200)
        end
    end
    return Get
end

SendMessage = function(message, isError, part, source)
    if part == nil then part = "client" end
    if part == "client" then
        if Settings.Framework == "QBCore" or  Settings.Framework == "OldQBCore" then
            local p = nil
            if isError then p = "error" else p = "success" end
            TriggerEvent("QBCore:Notify",message, p)
        else
            TriggerEvent("esx:showNotification", message)
        end
    elseif part == "server" then
        if Settings.Framework == "QBCore" or  Settings.Framework == "OldQBCore" then
            local p = nil
            if isError then p = "error" else p = "success" end
            TriggerClientEvent('QBCore:Notify', source, message, p)
        else
            TriggerClientEvent("esx:showNotification",source, message)
        end
    end
end

ConnectRadio = function(data) 
    TriggerServerEvent("setRadioChannel", data)
    if Settings.Voice == "pma-voice" then 
        exports["pma-voice"]:setRadioChannel(0)
        exports["pma-voice"]:setRadioChannel(data)
    elseif Settings.Voice == "saltychat" then
        exports["saltychat"]:SetRadioChannel(0, true)
        exports["saltychat"]:SetRadioChannel(data, true)
    elseif Settings.Voice == "mumble-voip" then
        exports["mumble-voip"]:SetRadioChannel(0)
        exports["mumble-voip"]:SetRadioChannel(data)
    end 
end

RadioLeave = function()
    TriggerServerEvent("setRadioChannel", 0)
    if Settings.Voice == "pma-voice" then 
        exports['pma-voice']:removePlayerFromRadio()
    elseif Settings.Voice == "saltychat" then
        exports["saltychat"]:RemovePlayerRadioChannel()
    elseif Settings.Voice == "mumble-voip" then
        exports["mumble-voip"]:removePlayerFromRadio()
    end 
end

setVolume = function(data)
    if Settings.Voice == "pma-voice" then 
        exports['pma-voice']:setRadioVolume(tonumber(data)) 
    elseif Settings.Voice == "saltychat" then
        exports["saltychat"]:SetRadioVolume(tonumber(data)) 
    end 
end

