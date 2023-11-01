QBCore, ESX = nil, nil
Framework = {
  Client = {},
  Server = {}
}

if Config.Framework == "QBCore" then
  QBCore = exports['qb-core']:GetCoreObject()
  Framework.VehiclesTable = "player_vehicles"
  Framework.PlayersTable = "players"
  Framework.PlayerId = "citizenid"
elseif Config.Framework == "ESX" then
  ESX = exports["es_extended"]:getSharedObject()
  Framework.VehiclesTable = "owned_vehicles"
  Framework.PlayersTable = "users"
  Framework.PlayerId = "owner"
else
  error("You need to set the Config.Framework to either \"QBCore\" or \"ESX\"!")
end
