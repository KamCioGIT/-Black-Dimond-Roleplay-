
Config = {}

Config.Framework = "newqb" -- esx - oldqb - newqb
--- mysql-async - oxmysql - ghmattimysql
Config.Mysql = "oxmysql" 
--Trade Command
Config.Command = "trade"
-- Set to true if your server has money items, false otherwise
Config.MoneyItems = false
Config.MoneyName = 'Cash'

Config.AcceptedKey = 246 -- Y 

Config.RejectedKey = 249 -- N

Config.defaultImage = "https://cdn.discordapp.com/attachments/633374677246541858/1093639674326700063/testpp.png"



Config.Locale = {
    ['trade'] = 'TRADE',
    ['myoffer'] = 'ALL',
    ['accepted'] = 'ACCEPTED',
    ['accept'] = 'ACCEPT',
    ['decline'] = 'DECLINE',
    ['esc'] = 'ESC',
    ['close'] = 'CLOSE',
    ['offernotaccepted'] = 'OFFER NOT ACCEPTED YET.',
    ['offeraccepted'] = 'OFFER ACCEPTED.',

}

Config.Notification = function(message, type, isServer, src)-- You can change here events for notifications
    if isServer then
        if Config.Framework == "esx" then
            TriggerClientEvent("esx:showNotification", src, message)
        else
            TriggerClientEvent('QBCore:Notify', src, message, type, 1500)
        end
    else
        if Config.Framework == "esx" then
            TriggerEvent("esx:showNotification", message)
        else
            TriggerEvent('QBCore:Notify', message, type, 1500)
        end
    end
end

Config.Notifications = { -- Notifications
    ["failed"] = {
        message = 'Trade failed to complete: invalid tradeId',
        type = "success",
    },
    ["yourself"] = {
        message = 'You cannot trade with yourself!',
        type = "success",
    },
    ["activetrade"] = {
        message = 'You already have an active trade request!',
        type = "success",
    },
    ["invalidid"] = {
        message = '  Invalid player ID!',
        type = "success",
    },
    
    ["reqex"] = {
        message = 'Usage: /trade [player ID]',
        type = "success",
    },
    ["nearby"] = {
        message = 'No players specified nearby',
        type = "success",
    },
    ["request"] = {
        message = 'You have received a trade request, use Y to accept and N to reject',
        type = "success",
    },
    ["rejected"] = {
        message = 'Trade request rejected by player',
        type = "success",
    },
    
    

}
function GetName(source)
   if Config.Framework == "esx" then
       local xPlayer = frameworkObject.GetPlayerFromId(tonumber(source))
       if xPlayer then
           return xPlayer.getName()
       else
           return "0"
       end
   else
       local Player = frameworkObject.Functions.GetPlayer(tonumber(source))
       if Player then
           return Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname
       else
           return "0"
       end
   end
end



