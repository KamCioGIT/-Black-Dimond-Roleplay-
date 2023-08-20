
-- framework
local ESX = nil
local QBCore = nil
if (GetResourceState("es_extended") == "started") then
	if (exports["es_extended"] and exports["es_extended"].getSharedObject) then
		ESX = exports["es_extended"]:getSharedObject()
	else
		TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)
	end
elseif (GetResourceState("qb-core") == "started") then
	QBCore = exports["qb-core"]:GetCoreObject()
end

-- callbacks shortcut
local CB = exports["kimi_callbacks"]



-- start tracker for specified player
function StartTracker(playerId, plate)
	assert(playerId ~= nil, "Parameter \"playerId\" must not be nil when starting tracker!")
	assert(plate ~= nil and type(plate) == "string", "Parameter \"plate\" was nil or not a string when starting tracker!")

	local plate = Trim(plate):upper()

	LogDebug("Starting tracker for " .. plate)

	local position = GetVehiclePositionFromPlate(plate)
	if (not position) then
		-- vehicle does not exist
		return false
	end

	-- vehicle exists, start tracking
	if (activeTrackers[playerId] == nil) then
		activeTrackers[playerId] = {}
	end
	activeTrackers[playerId][plate] = {
		position	= position,
		isSuspended	= false
	}

	-- send position to player once
	TriggerClientEvent("VT:position", playerId, plate, position)

	Citizen.CreateThread(function()
		while (true) do
			Citizen.Wait(Config.syncInterval)

			if (activeTrackers[playerId] == nil or activeTrackers[playerId][plate] == nil) then
				return
			end

			if (not activeTrackers[playerId][plate].isSuspended) then
				local position = GetVehiclePositionFromPlate(plate)
				if (position) then
					if (#(position - activeTrackers[playerId][plate].position) > 2.5) then
						activeTrackers[playerId][plate].position = position

						-- send position to player
						TriggerClientEvent("VT:position", playerId, plate, position)
					end
				else
					-- vehicle does not exist anymore
					TriggerClientEvent("VT:vehicleDoesNotExist", playerId, plate)
					LogDebug("Stopped tracker for " .. plate .. ". Vehicle does not exist anymore!")
					return
				end
			end
		end
	end)

	return true
end

-- stop tracker for specified player
function StopTracker(playerId, plate)
	assert(playerId ~= nil, "Parameter \"playerId\" must not be nil when stopping tracker!")
	assert(plate ~= nil and type(plate) == "string", "Parameter \"plate\" was nil or not a string when stopping tracker!")

	local plate = Trim(plate):upper()

	LogDebug("Stopping tracker for " .. plate)

	if (activeTrackers[playerId] and activeTrackers[playerId][plate]) then
		activeTrackers[playerId][plate] = nil

		return true
	end

	return false
end



-- get all owned vehicles from player
function GetPlayerVehicles(playerId)
	if (playerId == nil) then
		LogError("Parameter \"playerId\" was nil while triggering server export \"GetOwnedVehicles\"!")
		return
	end

	local vehicles = {}

	if (ESX) then
		local playerData = ESX.GetPlayerFromId(playerId)
		if (playerData) then
			local results = MySQL.Sync.fetchAll("SELECT `plate`, `vehicle` FROM `owned_vehicles` WHERE `owner` = @owner", {
				["@owner"] = playerData.identifier
			})

			for i = 1, #results, 1 do
				table.insert(vehicles, {
					plate = results[i].plate,
					model = json.decode(results[i].vehicle).model
				})
			end
		else
			LogError("\"playerData\" was nil while getting owned vehicles for id " .. tostring(playerId))
		end
	elseif (QBCore) then
		local player = QBCore.Functions.GetPlayer(playerId)
		if (player) then
			local results = MySQL.Sync.fetchAll("SELECT `plate`, `mods` FROM `player_vehicles` WHERE `citizenid` = @citizenid", {
				["@citizenid"] = player.PlayerData.citizenid
			})

			for i = 1, #results, 1 do
				table.insert(vehicles, {
					plate = results[i].plate,
					model = json.decode(results[i].mods).model
				})
			end
		else
			LogError("\"player\" was nil while getting owned vehicles for id " .. tostring(playerId))
		end
	end

	return vehicles
end

-- get a vehicles position using its plate
function GetVehiclePositionFromPlate(plate)
	if (GetResourceState("AdvancedParking") == "started") then
		return exports["AdvancedParking"]:GetVehiclePosition(plate)
	else
		local vehicle = TryGetVehicleFromPlate(plate)
		if (DoesEntityExist(vehicle)) then
			return GetEntityCoords(vehicle)
		end
	end

	return nil
end



-- player disconnected, remove trackers
AddEventHandler("playerDropped", function(disconnectReason)
	LogDebug("Stopping all trackers for " .. source)

	activeTrackers[source] = nil
end)



-- suspend tracker (for eventual reactivation)
RegisterNetEvent("VT:suspendTracker", function(plate)
	local playerId = source

	if (activeTrackers[playerId] and activeTrackers[playerId][plate]) then
		LogDebug("Suspending tracker for " .. plate)

		activeTrackers[playerId][plate].isSuspended = true
	end
end)
-- restart tracker again
RegisterNetEvent("VT:restartTracker", function(plate)
	local playerId = source

	if (activeTrackers[playerId] and activeTrackers[playerId][plate]) then
		LogDebug("Restarting tracker for " .. plate)

		activeTrackers[playerId][plate].isSuspended = false
	end
end)



-- register command to open the menu
if (Config.menuCommand) then
	RegisterCommand(Config.menuCommand, function(source, args, raw)
		TriggerClientEvent("VT:openMenu", source)
	end, false)
end



-- callbacks
CB:Register("VT:startTracker", function(playerId, plate)
	return StartTracker(playerId, plate)
end)
CB:Register("VT:stopTracker", function(playerId, plate)
	return StopTracker(playerId, plate)
end)
CB:Register("VT:getOwnedVehicles", function(playerId)
	return GetPlayerVehicles(playerId)
end)

-- is player police officer
CB:Register("VT:isPolice", function(playerId)
	if (ESX) then
		local playerData = ESX.GetPlayerFromId(playerId)

		return playerData and playerData.job and playerData.job.name == "police"
	elseif (QBCore) then
		local player = QBCore.Functions.GetPlayer(playerId)

		return player and player.PlayerData.job and player.PlayerData.job.name == "police"
	end

	return false
end)

-- register usable item
if (Config.menuItem and Config.menuItem ~= "") then
	if (ESX) then
		ESX.RegisterUsableItem(Config.menuItem, function(playerId)
			TriggerClientEvent("VT:openMenu", playerId)
		end)
	elseif (QBCore) then
		QBCore.Functions.CreateUseableItem(Config.menuItem, function(playerId)
			TriggerClientEvent("VT:openMenu", playerId)
		end)
	end
end



-- define exports
exports("StartTracker", StartTracker)
exports("StopTracker", StopTracker)
