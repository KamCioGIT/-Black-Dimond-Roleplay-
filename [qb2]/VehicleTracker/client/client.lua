
-- callback shortcut
local CB = exports["kimi_callbacks"]
-- translation shortcut
local CS = Config.Strings



-- menu
local menuPool = NativeUI.CreatePool()
local trackerMenu = NativeUI.CreateMenu(CS.trackerMenuTitle, CS.trackerMenuDesc)
Citizen.CreateThread(function()
	while (true) do
		Citizen.Wait(0)

		if (menuPool:IsAnyMenuOpen()) then
			menuPool:ProcessMenus()
		end

		if (Config.menuButton and IsControlJustPressed(0, Config.menuButton)) then
			OpenMenu()
		end
	end
end)



-- creates a new blip
function StartTracker(plate, position)
	if (activeTrackers[plate]) then
		return
	end

	Log("Starting tracker for " .. plate)

	-- add blip
	local blipHandle = AddBlipForCoord(position.x, position.y, position.z)

	SetBlipSprite(blipHandle, 523)
	SetBlipColour(blipHandle, 0)

	SetBlipScale(blipHandle, 1.0)
	SetBlipDisplay(blipHandle, 2)
	SetBlipAsShortRange(blipHandle, false)

	BeginTextCommandSetBlipName('STRING')
	AddTextComponentSubstringPlayerName(plate)
	EndTextCommandSetBlipName(blipHandle)

	activeTrackers[plate] = {
		blip		= blipHandle,
		currPos		= position,
		startPos	= position
	}
end

-- updates the blip
function UpdateTracker(plate, position)
	if (not activeTrackers[plate]) then
		return
	end

	activeTrackers[plate].currPos = position

	Citizen.CreateThread(function()
		-- check if vehicle is loaded on client side
		local vehicle = TryGetVehicleFromPlate(plate)
		if (DoesEntityExist(vehicle)) then
			TriggerServerEvent("VT:suspendTracker", plate)
			Log("Suspending tracker for " .. plate)

			-- update blip position on client side
			while (DoesEntityExist(vehicle) and activeTrackers[plate]) do
				local pos = GetEntityCoords(vehicle)

				activeTrackers[plate].currPos = pos
				activeTrackers[plate].startPos = pos

				SetBlipCoords(activeTrackers[plate].blip, pos.x, pos.y, pos.z)

				Citizen.Wait(0)
			end

			TriggerServerEvent("VT:restartTracker", plate)
			Log("Restarting tracker for " .. plate)

			return
		end

		-- lerp blip position
		local timer = GetGameTimer()
		while (timer + Config.lerpTime > GetGameTimer()) do
			if (activeTrackers[plate] == nil) then
				return
			end

			local lerpedPos = LerpVector3(activeTrackers[plate].startPos, activeTrackers[plate].currPos, (GetGameTimer() - timer) / Config.lerpTime)
			SetBlipCoords(activeTrackers[plate].blip, lerpedPos.x, lerpedPos.y, lerpedPos.z)
				
			Citizen.Wait(0)
		end

		activeTrackers[plate].startPos = activeTrackers[plate].currPos
		SetBlipCoords(activeTrackers[plate].blip, activeTrackers[plate].currPos.x, activeTrackers[plate].currPos.y, activeTrackers[plate].currPos.z)
	end)
end

-- removes the blip
function StopTracker(plate)
	if (not activeTrackers[plate]) then
		return
	end

	RemoveBlip(activeTrackers[plate].blip)

	activeTrackers[plate] = nil

	Log("Stopping tracker for " .. plate)
end

-- opens the menu
function OpenMenu()
	GenerateMenu()
	trackerMenu:Visible(not trackerMenu:Visible())
end

-- generate menu
function GenerateMenu()
	trackerMenu:Clear()

	trackerMenu = NativeUI.CreateMenu(CS.trackerMenuTitle, CS.trackerMenuDesc)
	menuPool:Add(trackerMenu)

	-- add tracker submenu
	local submenuTrackers = menuPool:AddSubMenu(trackerMenu, CS.activeTrackersTitle, CS.activeTrackersDesc)
	submenuTrackers.ParentItem:RightLabel(">")

	-- add currently active trackers to the list
	for plate, tracker in pairs(activeTrackers) do
		AddTrackerItem(submenuTrackers, plate)
	end

	-- add owned vehicles submenu
	local submenuVehicles = menuPool:AddSubMenu(trackerMenu, CS.ownedVehiclesTitle, CS.ownedVehiclesDesc)
	submenuVehicles.ParentItem:RightLabel(">")

	submenuVehicles.ParentItem.Activated = function(menu, item)
		Citizen.CreateThread(function()
			local ownedVehicles = CB:Trigger("VT:getOwnedVehicles")

			for i, vehicle in ipairs(ownedVehicles) do
				local name = GetNameFromVehicleModel(vehicle.model) .. " " .. vehicle.plate
				local itemVehicle = NativeUI.CreateItem(name, CS.startTrackerDesc)
				if (activeTrackers[vehicle.plate]) then
					itemVehicle:RightLabel("Active")
				end
				submenuVehicles:AddItem(itemVehicle)
			end

			submenuVehicles.OnItemSelect = function(menu, item, index)
				local plate = ownedVehicles[index].plate

				if (activeTrackers[plate]) then
					Citizen.CreateThread(function()
						if (CB:Trigger("VT:stopTracker", plate)) then
							item:RightLabel("")
							ShowNotification(string.format(CS.stopTrackerNotif, plate))

							StopTracker(plate)

							if (menuPool:IsAnyMenuOpen()) then
								if (#submenuTrackers.Items == 1) then
									submenuTrackers:Clear()
								else
									for i = 1, #submenuTrackers.Items, 1 do
										if (submenuTrackers.Items[i].Text._Text == plate) then
											submenuTrackers:RemoveItemAt(i)
											break
										end
									end
								end
							end
						else
							ShowNotification(string.format(CS.noActiveTrackerNotif, plate))

							Log(plate .. " has no active tracker...")
						end
					end)

					return
				end

				Citizen.CreateThread(function()
					if (CB:Trigger("VT:startTracker", plate)) then
						item:RightLabel("Active")
						ShowNotification(string.format(CS.startTrackerNotif, plate))

						AddTrackerItem(submenuTrackers, plate)

						Log("Started tracking " .. plate)
					else
						ShowNotification(string.format(CS.trackingFailedNotif, plate))

						Log(plate .. " could not be tracked.")
					end
				end)
			end

			menuPool:RefreshIndex()
		end)
	end
	submenuVehicles.OnMenuClosed = function(menu)
		submenuVehicles:Clear()
	end

	-- add police tracker
	Citizen.CreateThread(function()
		if (Config.enablePoliceTracker and CB:Trigger("VT:isPolice") and menuPool:IsAnyMenuOpen()) then
			local policeItem = NativeUI.CreateItem(CS.policeItemTitle, CS.policeItemDesc)
			policeItem.Activated = function(menu, item)
				local plate = InputDisplay(CS.plateInput, 8)
				if (plate:len() <= 0) then
					return
				end
				plate = plate:upper()

				Citizen.CreateThread(function()
					if (CB:Trigger("VT:startTracker", plate)) then
						ShowNotification(string.format(CS.startTrackerNotif, plate))

						AddTrackerItem(submenuTrackers, plate:upper())

						Log("Started tracking " .. plate)
					else
						ShowNotification(string.format(CS.trackingFailedNotif, plate))

						Log(plate .. " could not be tracked.")
					end
				end)
			end
			trackerMenu:AddItem(policeItem)
			menuPool:RefreshIndex()
		end
	end)

	menuPool:ControlDisablingEnabled(false)
	menuPool:MouseControlsEnabled(false)

	menuPool:RefreshIndex()
end

function AddTrackerItem(submenu, plate)
	local itemTracker = NativeUI.CreateItem(plate, CS.stopTrackerDesc)
	itemTracker.Activated = function(menu, item)
		Citizen.CreateThread(function()
			if (CB:Trigger("VT:stopTracker", plate)) then
				ShowNotification(string.format(CS.stopTrackerNotif, plate))

				StopTracker(plate)

				if (menuPool:IsAnyMenuOpen()) then
					if (#submenu.Items == 1) then
						submenu:Clear()
						submenu:GoBack()
					else
						for i = 1, #submenu.Items, 1 do
							if (submenu.Items[i] == item) then
								submenu:RemoveItemAt(i)
								break
							end
						end
					end
					menuPool:RefreshIndex()
				end
			else
				ShowNotification(string.format(CS.noActiveTrackerNotif, plate))

				Log(plate .. " has no active tracker...")
			end
		end)
	end
	submenu:AddItem(itemTracker)
end



-- shows a notification and returns its handle
function ShowNotification(text)
	SetNotificationTextEntry('STRING')
	AddTextComponentSubstringPlayerName(text)
	return DrawNotification(false, true)
end



-- start or update a tracker
RegisterNetEvent("VT:position", function(plate, position)
	if (activeTrackers[plate] == nil) then
		StartTracker(plate, position)
	else
		UpdateTracker(plate, position)
	end
end)

-- vehicle doesn't exist anymore
RegisterNetEvent("VT:vehicleDoesNotExist", function(plate)
	StopTracker(plate)
end)

-- open menu over network
RegisterNetEvent("VT:openMenu", function()
	OpenMenu()
end)

-- register OpenMenu export
exports("OpenMenu", OpenMenu)
