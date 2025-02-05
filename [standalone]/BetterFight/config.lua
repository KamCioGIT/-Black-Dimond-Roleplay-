Config = {}


--SERVERSIDE STUFF--
Config.CheckVersion =  false -- Enable/Disable version checker. Prints on serverside console.
--SERVERSIDE STUFF

--CROSSHAIR--
Config.UseCustomCrosshair = true -- Turn on/off custom crosshair.
Config.RemoveCrosshairOnFirstPerson = true -- Turn on/off custom crosshair while On First Person. IGNORE if the above is set to FALSE.
--CROSSHAIR--

--DISABLE HEADSHOT--
Config.RemoveHeadshots = true -- Disable/Enable headshots only on players.
--DISABLE HEADSHOT--

--JUMP SPAM PREVENTION
Config.JumpSpamPrevention = true -- Disable/Enable the jump spam prevention system. Pretty much if you spam the jump button it will make you fall down.
Config.JumpSpamPreventionTimer = 2000 -- Timer for the jump spam prevention system. This is in milliseconds. So 2000 is 2 seconds.
--JUMP SPAM PREVENTION


--REMOVE PISTOL WHIPPING
Config.RemovePistolWhipping = true
--REMOVE PISTOL WHIPPING

--ROLL PREVENTION
Config.RollPrevention = false -- Disable/Enable the roll prevention. Just doesn't allow players to roll while aiming. Yes, it is annoying in gta.
--ROLL PREVENTION

--VIEW CAM FORCER
Config.UseViewCamForcer = false -- Turn on/off view cam forcer inside vehicles.
Config.ViewCamForcerStartTime = 200
Config.ViewCamForcerFinishTime = 0
Config.UseVehicleViewCamForcer = true -- Turn on/off view cam forcer inside vehicles.
Config.UseDisable3rdPersonShooting = false
Config.UseFirstJoinViewCamForcer = false -- Disable the first person on first join. To stop the loop you need to trigger our export on your first joined event. exports['BetterFight']:ViewCamForcerJoined()
Config.DefaultViewCamModeOnFirstJoin = 1 -- Sets their prespective. Choose either 1/2/3.
--VIEW CAM FORCER

--WEAPON DAMAGES
Config.UseCustomWeaponDamages = true -- Disable/Enable custom weapon damages.
--WEAPON DAMAGES


--RECOIL
Config.UseRecoil = true -- Turn on/off recoil.
Config.RightLeftRecoil = true -- Turn on/off right left movement recoil.
Config.RightLeftRecoilRandomiser = true --If this is set to true then the recoil inside a vehicle will not trigger all the time. The value below will set the chance if true.
Config.RightLeftRecoilRandomiserChance = 50 --This is a percentage out of 100. The higher it is, the higher the chance of recoil kicking inside a vehicle.
Config.UseVehicleRecoil = true --Enable/Disable recoil inside vehicles.
Config.UseScreenExplosions = true --Adds a small screen explosion, it is affected by how big recoil is.
Config.GripMultiplier =  true
Config.SuppressorMultiplier = true
Config.LoweredFirstPersonRecoil = false -- Turn on/off lowered recoil while being in first person mode..
Config.LoweredFirstPersonRecoilValue = 0.7 -- Value for lowered recoil. It is actually the recoil * the value. So the lower the value is here the lowered it will be in first person.
--RECOIL--
--WEAPON SETTINGS--
Config.Weapons= {

    --You can change the values down here, feel free to also comment any weapons you don't want and add any weapons you do want. Only throwables are missing from this list.
    --Here's a link for you to find all weapons in GTA V: https://wiki.rage.mp/index.php?title=Weapons

    --Pistol--
    [1] = { hash = `WEAPON_PISTOL`, recoil = 2.20, rightLeftRecoil = 1.00, vehicleRecoil = 3.80, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.65},
    [2] = { hash = `WEAPON_PISTOL_MK2`, recoil = 1.10, rightLeftRecoil = 1.00, vehicleRecoil = 3.80, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.60},
    [3] = { hash = `WEAPON_COMBATPISTOL`, recoil = 1.40, rightLeftRecoil = 1.00, vehicleRecoil = 3.80, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.6},
    [4] = { hash = `WEAPON_APPISTOL`, recoil = 1.50, rightLeftRecoil = 1.00, vehicleRecoil = 5.50, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.46},
    [5] = { hash = `WEAPON_STUNGUN`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 3.50, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.10},
    [6] = { hash = `WEAPON_PISTOL50`, recoil = 3.80, rightLeftRecoil = 3.90, vehicleRecoil = 2.90, vehicleRightLeftRecoil = 2.50, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.71},
    [7] = { hash = `WEAPON_SNSPISTOL`, recoil = 1.30, rightLeftRecoil = 1.00, vehicleRecoil = 3.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.52},
    [8] = { hash = `WEAPON_SNSPISTOL_MK2`, recoil = 1.30, rightLeftRecoil = 1.00, vehicleRecoil = 3.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.43},
    [9] = { hash = `WEAPON_HEAVYPISTOL`, recoil = 1.50, rightLeftRecoil = 1.00, vehicleRecoil = 3.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.50},
    [10] = { hash = `WEAPON_VINTAGEPISTOL`, recoil = 1.75, rightLeftRecoil = 1.00, vehicleRecoil = 3.80, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.55},
    [11] = { hash = `WEAPON_FLAREGUN`, recoil = 3.00, rightLeftRecoil = 1.00, vehicleRecoil = 3.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.35},
    [12] = { hash = `WEAPON_MARKSMANPISTOL`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 3.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.0},
    [13] = { hash = `WEAPON_REVOLVER`, recoil = 6.00, rightLeftRecoil = 1.00, vehicleRecoil = 3.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.5},
    [14] = { hash = `WEAPON_REVOLVER_MK2`, recoil = 6.00, rightLeftRecoil = 1.00, vehicleRecoil = 3.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.35},
    [15] = { hash = `WEAPON_DOUBLEACTION`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 3.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.35},
    [16] = { hash = `WEAPON_RAYPISTOL`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 3.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.0},
    [17] = { hash = `WEAPON_CERAMICPISTOL`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 3.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.61},
    [18] = { hash = `WEAPON_NAVYREVOLVER`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 3.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.35},
    [19] = { hash = `WEAPON_GADGETPISTOL`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 3.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.35},
    --Pistol--


    --Submachine Guns--
    [20] = { hash = `WEAPON_MICROSMG`, recoil = 1.40, rightLeftRecoil = 1.00, vehicleRecoil = 1.7, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.65},
    [21] = { hash = `WEAPON_SMG`, recoil = 2.80, rightLeftRecoil = 2.80, vehicleRecoil = 1.50, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.80},
    [22] = { hash = `WEAPON_SMG_MK2`, recoil = 1.30, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.2},
    [23] = { hash = `WEAPON_ASSAULTSMG`, recoil = 2.50, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.8},
    [24] = { hash = `WEAPON_COMBATPDW`, recoil = 1.75, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.0},
    [25] = { hash = `WEAPON_MACHINEPISTOL`, recoil = 1.30, rightLeftRecoil = 1.00, vehicleRecoil = 2.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.80},
    [26] = { hash = `WEAPON_MINISMG`, recoil = 1.0, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    [27] = { hash = `WEAPON_RAYCARBINE`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.25},
    --Submachine Guns--


    --Shotguns--
    [28] = { hash = `WEAPON_PUMPSHOTGUN`, recoil = 2.50, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.60, suppressorMultiplier = 0.72, damageMultiplier = 0.48},
    [29] = { hash = `WEAPON_PUMPSHOTGUN_MK2`, recoil = 3.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.30},
    [30] = { hash = `WEAPON_SAWNOFFSHOTGUN`, recoil = 3.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.222},
    [31] = { hash = `WEAPON_ASSAULTSHOTGUN`, recoil = 6.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.30},
    [32] = { hash = `WEAPON_BULLPUPSHOTGUN`, recoil = 8.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 2.58},
    [33] = { hash = `WEAPON_MUSKET`, recoil = 6.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.27},
    [34] = { hash = `WEAPON_HEAVYSHOTGUN`, recoil = 6.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.20},
    [35] = { hash = `WEAPON_DBSHOTGUN`, recoil = 5.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.40},
    [36] = { hash = `WEAPON_AUTOSHOTGUN`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.30},
    [37] = { hash = `WEAPON_COMBATSHOTGUN`, recoil = 4.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.35},
    --Shotguns--

    --Assault Rifles--
    [38] = { hash = `WEAPON_ASSAULTRIFLE`, recoil = 1.65, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.40, suppressorMultiplier = 0.72, damageMultiplier = 0.9},
    [39] = { hash = `WEAPON_ASSAULTRIFLE_MK2`, recoil = 0.86, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.47},
    [40] = { hash = `WEAPON_CARBINERIFLE`, recoil = 0.80, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.40, suppressorMultiplier = 0.72, damageMultiplier = 0.90},
    [41] = { hash = `WEAPON_CARBINERIFLE_MK2`, recoil = 1.43, rightLeftRecoil = 0.60, vehicleRecoil = 0.60, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.95},
    [42] = { hash = `WEAPON_ADVANCEDRIFLE`, recoil = 1.30, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.55},
    [43] = { hash = `WEAPON_SPECIALCARBINE`, recoil = 1.20, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.30},
    [44] = { hash = `WEAPON_SPECIALCARBINE_MK2`, recoil = 1.38, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.08},
    [45] = { hash = `WEAPON_BULLPUPRIFLE`, recoil = 1.50, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.7},
    [46] = { hash = `WEAPON_BULLPUPRIFLE_MK2`, recoil = 1.55, rightLeftRecoil = 0.70, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.75},
    [47] = { hash = `WEAPON_COMPACTRIFLE`, recoil = 1.30, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.2},
    [48] = { hash = `WEAPON_MILITARYRIFLE`, recoil = 0.10, rightLeftRecoil = 0.80, vehicleRecoil = 0.80, vehicleRightLeftRecoil = 1.50, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.50},
    --Assault Rifles--

    --Light Machine Guns--
    [49] = { hash = `WEAPON_MG`, recoil = 1.80, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.25},
    [50] = { hash = `WEAPON_COMBATMG`, recoil = 1.70, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.50},
    [51] = { hash = `WEAPON_COMBATMG_MK2`, recoil = 1.40, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    [52] = { hash = `WEAPON_GUSENBERG`, recoil = 1.3, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.492},
    --Light Machine Guns--

    --Sniper Rifles--
    [53] = { hash = `WEAPON_SNIPERRIFLE`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    [54] = { hash = `WEAPON_HEAVYSNIPER`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.10},
    [55] = { hash = `WEAPON_HEAVYSNIPER_MK2`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.10},
    [56] = { hash = `WEAPON_MARKSMANRIFLE`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    [57] = { hash = `WEAPON_MARKSMANRIFLE_MK2`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    --Sniper Rifles--

    --Heavy Weapons--
    [58] = { hash = `WEAPON_RPG`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 5.0},
    [59] = { hash = `WEAPON_GRENADELAUNCHER`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0},
    [60] = { hash = `WEAPON_GRENADELAUNCHER_SMOKE`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0},
    [61] = { hash = `WEAPON_MINIGUN`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0},
    [62] = { hash = `WEAPON_FIREWORK`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.0},
    [63] = { hash = `WEAPON_RAILGUN`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0},
    [64] = { hash = `WEAPON_HOMINGLAUNCHER`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 10.0},
    [65] = { hash = `WEAPON_COMPACTLAUNCHER`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0},
    [66] = { hash = `WEAPON_RAYMINIGUN`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0},
    --Heavy Weapons--

    --Melee--
    [70] = { hash = `WEAPON_UNARMED`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.10},
    [71] = { hash = `WEAPON_DAGGER`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.15},
    [72] = { hash = `WEAPON_BAT`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.15},
    [73] = { hash = `WEAPON_BOTTLE`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.15},
    [74] = { hash = `WEAPON_CROWBAR`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.15},
    [75] = { hash = `WEAPON_FLASHLIGHT`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.00},
    [76] = { hash = `WEAPON_GOLFCLUB`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.15},
    [77] = { hash = `WEAPON_HAMMER`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.15},
    [78] = { hash = `WEAPON_HATCHET`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.15},
    [79] = { hash = `WEAPON_KNUCKLE`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.10},
    [80] = { hash = `WEAPON_KNIFE`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.05},
    [81] = { hash = `WEAPON_MACHETE`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.10},
    [82] = { hash = `WEAPON_SWITCHBLADE`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.10},
    [83] = { hash = `WEAPON_NIGHTSTICK`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.10},
    [84] = { hash = `WEAPON_WRENCH`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.10},
    [85] = { hash = `WEAPON_BATTLEAXE`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.10},
    [86] = { hash = `WEAPON_POOLCUE`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.05},
    [87] = { hash = `WEAPON_STONE_HATCHET`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.10},
    [88] = { hash = `WEAPON_THERMALKATANA`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 1.0},
    [89] = { hash = `WEAPON_DAGGER2`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.10},
    [90] = { hash = `WEAPON_KARAMBIT`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.10},
    [91] = { hash = `WEAPON_KIBA`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.10},
    [92] = { hash = `WEAPON_SOGFASTHAWK`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.10},
    [93] = { hash = `WEAPON_BERSERKER`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.10},
    --Melee--

   --EXTRA--
    [94] = { hash = `weapon_heavyrifle`, recoil = 1.55, rightLeftRecoil = 0.70, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.70},
    [95] = { hash = `weapon_ak47`, recoil = 0.86, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.82},
    [96] = { hash = `weapon_m9`, recoil = 2.80, rightLeftRecoil = 1.05, vehicleRecoil = 1.50, vehicleRightLeftRecoil = 2.30, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.60},
    [97] = { hash = `weapon_m1911`, recoil = 4.50, rightLeftRecoil = 3.55, vehicleRecoil = 1.50, vehicleRightLeftRecoil = 1.10, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.43},
    [98] = { hash = `weapon_glock22`, recoil = 2.90, rightLeftRecoil = 1.05, vehicleRecoil = 1.50, vehicleRightLeftRecoil = 1.30, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.45},
    [99] = { hash = `weapon_glock18c`, recoil = 4.30, rightLeftRecoil = 4.00, vehicleRecoil = 1.70, vehicleRightLeftRecoil = 2.50, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.38},
    [100] ={ hash = `weapon_de`, recoil = 5.80, rightLeftRecoil = 3.90, vehicleRecoil = 2.90, vehicleRightLeftRecoil = 2.50, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.40},
    [101] ={ hash = `weapon_mac10`, recoil = 2.50, rightLeftRecoil = 2.50, vehicleRecoil = 1.50, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.65},
    [102] ={ hash = `weapon_mp9`, recoil = 2.60, rightLeftRecoil = 1.80, vehicleRecoil = 1.50, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.70},
    [103] ={ hash = `weapon_uzi`, recoil = 0.55, rightLeftRecoil = 1.60, vehicleRecoil = 3.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    [104] ={ hash = `weapon_mossberg`, recoil = 3.50, rightLeftRecoil = 0.50, vehicleRecoil = 1.50, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.01},
    [105] ={ hash = `weapon_fnx45`, recoil = 5.00, rightLeftRecoil = 2.80, vehicleRecoil = 1.50, vehicleRightLeftRecoil = 1.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.40},
    [106] ={ hash = `weapon_aks74`, recoil = 1.80, rightLeftRecoil = 2.00, vehicleRecoil = 1.50, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.85},
    [107] ={ hash = `weapon_ak74`, recoil = 0.86, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.72},
    [108] ={ hash = `weapon_m70`, recoil = 2.40, rightLeftRecoil = 1.80, vehicleRecoil = 1.50, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    [109] ={ hash = `weapon_hk416`, recoil = 2.50, rightLeftRecoil = 2.00, vehicleRecoil = 1.50, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.70},
    [112] ={ hash = `weapon_glock17`, recoil = 2.50, rightLeftRecoil = 1.05, vehicleRecoil = 1.50, vehicleRightLeftRecoil = 2.30, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.55},
    [113] ={ hash = `weapon_remington`, recoil = 3.50, rightLeftRecoil = 0.50, vehicleRecoil = 1.50, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.30},
    [114] ={ hash = `weapon_victusxmr`, recoil = 8.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},

--Vlife V3 Guns--

    --Legendary--
    [115] ={ hash = `weapon_neva`, recoil = 0.40, rightLeftRecoil = 1.55, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.35},
    [116] ={ hash = `weapon_hfsmg`, recoil = 0.70, rightLeftRecoil = 2.30, vehicleRecoil = 5.00, vehicleRightLeftRecoil = 5.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.30},
    [117] ={ hash = `weapon_sfak`, recoil = 0.40, rightLeftRecoil = 1.55, vehicleRecoil = 2.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.35},
    [118] ={ hash = `weapon_drh`, recoil = 0.40, rightLeftRecoil = 1.55, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.30},
    [119] ={ hash = `weapon_ars`, recoil = 0.40, rightLeftRecoil = 1.55, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.32},
    [120] ={ hash = `weapon_cfs`, recoil = 0.40, rightLeftRecoil = 1.55, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.35},

    --Epic--
    [121] ={ hash = `weapon_ue4`, recoil = 0.50, rightLeftRecoil = 1.65, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.38},
    [122] ={ hash = `weapon_ms32`, recoil = 0.50, rightLeftRecoil = 1.65, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.18},
    [123] ={ hash = `weapon_safak`, recoil = 0.50, rightLeftRecoil = 1.65, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.30},
    [124] ={ hash = `weapon_fmr`, recoil = 0.50, rightLeftRecoil = 1.65, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.30},
    [125] ={ hash = `weapon_sf2`, recoil = 0.50, rightLeftRecoil = 1.65, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.48},
    [126] ={ hash = `weapon_m416p`, recoil = 0.50, rightLeftRecoil = 1.65, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.22},
    [127] ={ hash = `weapon_sfrifle`, recoil = 0.50, rightLeftRecoil = 1.65, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.28},
    [128] ={ hash = `weapon_nanite`, recoil = 0.50, rightLeftRecoil = 1.65, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.25},
    [129] ={ hash = `weapon_jrbak`, recoil = 0.50, rightLeftRecoil = 1.65, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.25},

    --Rare--
    [130] ={ hash = `weapon_ak47s`, recoil = 0.55, rightLeftRecoil = 1.80, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.23},
    [131] ={ hash = `weapon_g3_2`, recoil = 0.55, rightLeftRecoil = 1.80, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.23},
    [132] ={ hash = `weapon_famasu1`, recoil = 0.55, rightLeftRecoil = 1.80, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.22},
    [133] ={ hash = `weapon_fn42`, recoil = 0.55, rightLeftRecoil = 1.80, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.22},
    [134] ={ hash = `weapon_sar`, recoil = 0.55, rightLeftRecoil = 1.80, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.22},
    [135] ={ hash = `weapon_mza`, recoil = 0.55, rightLeftRecoil = 1.80, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.23},
    [136] ={ hash = `weapon_galilar`, recoil = 0.55, rightLeftRecoil = 1.80, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.22},
    [137] ={ hash = `weapon_h2smg`, recoil = 0.75, rightLeftRecoil = 2.50, vehicleRecoil = 5.00, vehicleRightLeftRecoil = 5.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.22},
    [138] ={ hash = `weapon_m133`, recoil = 0.55, rightLeftRecoil = 1.80, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.25},
    [139] ={ hash = `weapon_sb4s`, recoil = 0.55, rightLeftRecoil = 1.80, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.16},

    --Common--
    [140] ={ hash = `weapon_iar`, recoil = 0.60, rightLeftRecoil = 2.00, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.19},
    [141] ={ hash = `weapon_g36`, recoil = 0.60, rightLeftRecoil = 2.00, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.19},
    [142] ={ hash = `weapon_ak4k`, recoil = 0.60, rightLeftRecoil = 2.00, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.24},
    [143] ={ hash = `weapon_m16a3`, recoil = 0.60, rightLeftRecoil = 2.00, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.20},
    [144] ={ hash = `weapon_idw`, recoil = 0.80, rightLeftRecoil = 3.00, vehicleRecoil = 5.00, vehicleRightLeftRecoil = 5.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 14.00},
    [145] ={ hash = `weapon_aug`, recoil = 0.60, rightLeftRecoil = 2.00, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.32},
    [146] ={ hash = `weapon_sunda`, recoil = 0.60, rightLeftRecoil = 2.00, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.32},
    [147] ={ hash = `weapon_akmkh`, recoil = 0.60, rightLeftRecoil = 2.00, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.24},
    [148] ={ hash = `weapon_sarb`, recoil = 0.60, rightLeftRecoil = 2.00, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.28},
    [149] ={ hash = `weapon_arc15`, recoil = 0.70, rightLeftRecoil = 2.00, vehicleRecoil = 5.00, vehicleRightLeftRecoil = 5.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.19},
    [150] ={ hash = `weapon_bulldog`, recoil = 0.60, rightLeftRecoil = 2.00, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.19},
    [151] ={ hash = `weapon_groza`, recoil = 0.60, rightLeftRecoil = 2.00, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.32},
    [152] ={ hash = `weapon_arma1`, recoil = 0.60, rightLeftRecoil = 2.00, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.17},

    --PD Rifles--
    [153] ={ hash = `weapon_glock17`, recoil = 1.90, rightLeftRecoil = 1.05, vehicleRecoil = 1.50, vehicleRightLeftRecoil = 2.30, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.55},
    [154] ={ hash = `weapon_fn502`, recoil = 1.90, rightLeftRecoil = 1.05, vehicleRecoil = 1.50, vehicleRightLeftRecoil = 2.30, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.55},
    [155] ={ hash = `weapon_ar15`, recoil = 0.86, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.47},
    [156] ={ hash = `weapon_m4`, recoil = 0.86, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 1.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.82},
    [157] ={ hash = `weapon_sr47`, recoil = 0.45, rightLeftRecoil = 1.50, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.25},
    [158] ={ hash = `weapon_lr300`, recoil = 0.40, rightLeftRecoil = 1.50, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.28},
    [159] ={ hash = `weapon_slr15`, recoil = 0.40, rightLeftRecoil = 1.45, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.28},
    [160] ={ hash = `weapon_a15rc`, recoil = 0.40, rightLeftRecoil = 1.45, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.30},
    [161] ={ hash = `weapon_casr`, recoil = 0.30, rightLeftRecoil = 1.40, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.75},
    [162] ={ hash = `weapon_howa_2`, recoil = 0.30, rightLeftRecoil = 1.40, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.30},
    [163] ={ hash = `weapon_grau`, recoil = 0.30, rightLeftRecoil = 1.40, vehicleRecoil = 1.00, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.50},
    [164] ={ hash = `weapon_scarh`, recoil = 0.80, rightLeftRecoil = 1.80, vehicleRecoil = 1.50, vehicleRightLeftRecoil = 1.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.72},
    
    --Bolt Action--
    [165] ={ hash = `WEAPON_DITDG`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.55},
    [166] ={ hash = `WEAPON_AWP`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.10},

    [167] ={ hash = `weapon_mk18`, recoil = 0.60, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 1.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.82},
    [168] = { hash = `weapon_pmxfm`, recoil = 0.66, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 1.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.47},

    [169] ={ hash = `weapon_lok`, recoil = 0.86, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.58},
    


}