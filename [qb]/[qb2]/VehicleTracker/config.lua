
Config = {}

-- at which rate the blips should update (in ms) (lower numbers can affect network performance negatively)
Config.syncInterval = 2500

-- time (in ms) in which to move the blips to the next synced location
Config.lerpTime = 250

-- set this to true if you want the police to be able to track any vehicle
Config.enablePoliceTracker = true

-- change this if you want another command
Config.menuCommand	= "track"
-- the button to open the menu (set to nil to not use it) (https://docs.fivem.net/docs/game-references/controls/)
Config.menuButton	= nil
-- item name for opening the menu (set to nil or "" to not use it)
Config.menuItem		= "gpsTracker"

Config.Strings = {
	trackerMenuTitle		= "Tracker Menu",
	trackerMenuDesc			= "Track your vehicles!",

	activeTrackersTitle		= "Active trackers",
	activeTrackersDesc		= "Shows a list of all active trackers.",

	ownedVehiclesTitle		= "Owned vehicles",
	ownedVehiclesDesc		= "Shows a list of all owned vehicles.",

	stopTrackerDesc			= "Stop tracking this vehicle.",
	startTrackerDesc		= "Start tracking this vehicle.",

	stopTrackerNotif		= "Stopped tracking %s",
	startTrackerNotif		= "Started tracking %s",
	trackingFailedNotif		= "Could not start tracking %s",

	noActiveTrackerNotif	= "There is no active tracker on %s",

	policeItemTitle			= "Police tracker",
	policeItemDesc			= "Activate a tracker on any vehicle",

	plateInput				= "Insert plate:"
}
