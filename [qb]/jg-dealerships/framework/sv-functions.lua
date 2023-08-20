--
-- Core Functions
--
function Framework.Server.CreateCallback(cbRef, cb)
  if Config.Framework == "QBCore" then
    return QBCore.Functions.CreateCallback(cbRef, function(...)
      cb(...)
    end)
  elseif Config.Framework == "ESX" then
    ESX.RegisterServerCallback(cbRef, function(...)
      cb(...)
    end)
  end
end

function Framework.Server.Notify(src, msg, type)
  TriggerClientEvent('jg-dealerships:client:notify', src, msg, type, 5000)
end

function Framework.Server.RegisterCommand(name, help, arguments, argsrequired, callback)
  if Config.Framework == "QBCore" then
    QBCore.Commands.Add(name, help, arguments, argsrequired, callback)
  elseif Config.Framework == "ESX" then
    RegisterCommand(name, callback)
  end
end

function Framework.Server.IsAdmin(src)
  if Config.Framework == "QBCore" then
    return QBCore.Functions.HasPermission(src, "command")
  elseif Config.Framework == "ESX" then
    return ESX.GetPlayerFromId(src).getGroup() == "admin"
  end
end

-- 
-- Society
--
function Framework.Server.RemoveFromSocietyFund(societyName, type, amount)
  if Config.Framework == "QBCore" then
    if type == "job" then
      exports['qb-management']:RemoveMoney(societyName, amount)
    elseif type == "gang" then
      exports['qb-management']:RemoveGangMoney(societyName, amount)
    end
  elseif Config.Framework == "ESX" then
    if type == "cash" then type = "money" end

    TriggerEvent('esx_society:getSociety', societyName, function(society)
      TriggerEvent('esx_addonaccount:getSharedAccount', society.account, function(account)
        account.removeMoney(amount)
      end)
    end)
  end
end

Framework.Server.CreateCallback("jg-dealerships:server:get-society-balance", function(src, cb, society, type)
  if Config.Framework == "QBCore" then
    if type == "job" then
      cb(exports['qb-management']:GetAccount(society))
    elseif type == "gang" then
      cb(exports['qb-management']:GetGangAccount(society))
    end
  elseif Config.Framework == "ESX" then
    if type == "cash" then type = "money" end

    TriggerEvent('esx_society:getSociety', society, function(data)
      if not data then return cb(0) end
      TriggerEvent('esx_addonaccount:getSharedAccount', data.account, function(account)
        cb(account.money)
      end)
    end)
  end
end)

function Framework.Server.SaveVehicleToGarage(src, purchaseType, society, societyType, model, plate, props, financed, financeData)
  if Config.Framework == "QBCore" then
    local playerData = Framework.Server.GetPlayer(src).PlayerData
    local license = playerData.license
    local citizenid = playerData.citizenid

    if purchaseType == "society" then
      if societyType == "job" then
        MySQL.insert.await("INSERT INTO player_vehicles (license,citizenid,vehicle,hash,mods,plate,financed,finance_data,job_vehicle,job_vehicle_rank) VALUES(?,?,?,?,?,?,?,?,?,?)", {license, society, model, joaat(model), json.encode(props), plate, financed, json.encode(financeData), 1, 0})
      elseif societyType == "gang" then
        MySQL.insert.await("INSERT INTO player_vehicles (license,citizenid,vehicle,hash,mods,plate,financed,finance_data,gang_vehicle,gang_vehicle_rank) VALUES(?,?,?,?,?,?,?,?,?,?)", {license, society, model, joaat(model), json.encode(props), plate, financed, json.encode(financeData), 1, 0})
      end
    else
      MySQL.insert.await("INSERT INTO player_vehicles (license,citizenid,vehicle,hash,mods,plate,financed,finance_data) VALUES(?,?,?,?,?,?,?,?)", {license, citizenid, model, joaat(model), json.encode(props), plate, financed, json.encode(financeData)})
    end
  elseif Config.Framework == "ESX" then
    local identifier = Framework.Server.GetPlayerIdentifier(src)

    if purchaseType == "society" then
      if societyType == "job" then
        MySQL.insert.await("INSERT INTO owned_vehicles (owner,plate,vehicle,financed,finance_data,job_vehicle,job_vehicle_rank) VALUES(?,?,?,?,?,?,?)", {society, plate, json.encode(props), financed, json.encode(financeData), 1, 0})
      elseif societyType == "gang" then
        MySQL.insert.await("INSERT INTO owned_vehicles (owner,plate,vehicle,financed,finance_data,gang_vehicle,gang_vehicle_rank) VALUES(?,?,?,?,?,?,?)", {society, plate, json.encode(props), financed, json.encode(financeData), 1, 0})
      end
    else
      MySQL.insert.await("INSERT INTO owned_vehicles (owner,plate,vehicle,financed,finance_data) VALUES(?,?,?,?,?)", {identifier, plate, json.encode(props), financed, json.encode(financeData)})
    end
  end
end

--
-- Player Functions
--
function Framework.Server.GetPlayer(src)
  if Config.Framework == "QBCore" then
    return QBCore.Functions.GetPlayer(src)
  elseif Config.Framework == "ESX" then
    return ESX.GetPlayerFromId(src)
  end
end

function Framework.Server.GetPlayerInfo(src)
  local player = Framework.Server.GetPlayer(src)
  if not player then return false end

  if Config.Framework == "QBCore" then
    return {
      name = player.PlayerData.charinfo.firstname .. " " .. player.PlayerData.charinfo.lastname
    }
  elseif Config.Framework == "ESX" then
    return {
      name = player.getName()
    }
  end
end

function Framework.Server.GetPlayerIdentifier(src)
  local player = Framework.Server.GetPlayer(src)
  if not player then return false end

  if Config.Framework == "QBCore" then
    return player.PlayerData.citizenid
  elseif Config.Framework == "ESX" then
    return player.getIdentifier()
  end
end

function Framework.Server.GetPlayerBalance(src, type)
  local player = Framework.Server.GetPlayer(src)
  if not player then return 0 end

  if Config.Framework == "QBCore" then
    return player.PlayerData.money[type]
  elseif Config.Framework == "ESX" then
    if type == "cash" then type = "money" end

    for i, acc in pairs(player.getAccounts()) do
      if acc.name == type then
        return acc.money
      end
    end

    return 0
  end
end

function Framework.Server.PlayerAddMoney(src, amount, account)
  local player = Framework.Server.GetPlayer(src)
  account = account or 'bank'

  if Config.Framework == "QBCore" then
    player.Functions.AddMoney(account, amount)
  elseif Config.Framework == "ESX" then
    if account == "cash" then account = "money" end
    player.addAccountMoney(account, amount)
  end
end

function Framework.Server.PlayerRemoveMoney(src, amount, account)
  local player = Framework.Server.GetPlayer(src)
  account = account or 'bank'

  if Config.Framework == "QBCore" then
    player.Functions.RemoveMoney(account, amount)
  elseif Config.Framework == "ESX" then
    if account == "cash" then account = "money" end
    player.removeAccountMoney(account, amount)
  end
end

function Framework.Server.GetPlayers()
  if Config.Framework == "QBCore" then
    return QBCore.Functions.GetQBPlayers()
  elseif Config.Framework == "ESX" then
    return ESX.GetExtendedPlayers()
  end
end

function Framework.Server.GetJobs()
  if Config.Framework == "QBCore" then
    return QBCore.Shared.Jobs
  elseif Config.Framework == "ESX" then
    return ESX.GetJobs()
  end
end