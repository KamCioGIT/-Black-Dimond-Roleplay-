Config = Config or {}

Config.ReloadTime = math.random(4000, 6000)

Config.DurabilityBlockedWeapons = {
    "weapon_stungun",
    "weapon_nightstick",
    "weapon_flashlight",
    "weapon_unarmed",
}

Config.Throwables = {
    "ball",
    "bzgas",
    "flare",
    "grenade",
    "molotov",
    "pipebomb",
    "proxmine",
    "smokegrenade",
    "snowball",
    "stickybomb",
}

Config.DurabilityMultiplier = {

     -- GGC Custom Weapons -- Melees
	['weapon_katana'] 		    = 0.15,
	['weapon_shiv'] 		    = 0.15,
	['weapon_sledgehammer']     = 0.15,
	['weapon_karambit']         = 0.15,
	['weapon_keyboard']         = 0.15,
	-- GGC Custom Weapons -- Hand Guns
	['weapon_glock17'] 		    = 0.15,
---	['weapon_glock18c'] 		= 0.15,
	['weapon_glock22'] 			= 0.15,
	['weapon_deagle'] 			= 0.15,
	['weapon_fnx45'] 			= 0.15,
	['weapon_m1911'] 			= 0.15,
    ['weapon_glock20'] 			= 0.15,
    ['weapon_glock19gen4'] 		= 0.15,
    -- GGC Custom Weapons -- SMGs
    ['weapon_pmxfm'] 			= 0.15,
    ['weapon_mac10'] 			= 0.15,
    -- GGC Custom Weapons -- Rifles
    ['weapon_mk47fm'] 			= 0.15,
    ['weapon_m6ic'] 			= 0.15,
    ['weapon_scarsc'] 			= 0.15,
    ['weapon_m4'] 			    = 0.15,
    ['weapon_ak47'] 			= 0.15,
    ['weapon_ak74'] 			= 0.15,
    ['weapon_aks74'] 			= 0.15,
    ['weapon_groza'] 			= 0.15,
    ['weapon_scarh'] 			= 0.15,


-- Kyros Weapon Pack V4
['weapon_glock19x'] 	         = 0.15,
['weapon_glock19'] 	             = 0.15,
['weapon_glock40'] 		         = 0.15,
['weapon_glock40s'] 	         = 0.15,
['weapon_ddm4v5'] 	             = 0.15,
['weapon_mpx'] 	                 = 0.15,
['weapon_pd509'] 		         = 0.15,
['weapon_aps'] 	                 = 0.15,
['weapon_ppk'] 	                 = 0.15,
['weapon_pitviper'] 	         = 0.15,
['weapon_barp']                  = 0.15,
['weapon_rdp'] 	                 = 0.15,
['weapon_lok']                   = 0.15,
['weapon_plr']                   = 0.15,
['weapon_xds9'] 	             = 0.15,
['weapon_pps'] 	                 = 0.15,
['weapon_xdme'] 	   	         = 0.15,
['weapon_sp']                    = 0.15,
['weapon_glock17s'] 	         = 0.15,
['weapon_glock18c']  	         = 0.15,
['weapon_glock19s']          	 = 0.15,
['weapon_arpistol'] 	         = 0.15,
['weapon_glock26s']   	         = 0.15,
['weapon_grenades'] 	         = 0.20,
['weapon_m32s']  	             = 0.15,
['weapon_microdraco'] 	         = 0.15,
['weapon_ruger57']  	         = 0.15,
['weapon_mk18'] 	 	         = 0.15,
['weapon_680'] 	 	             = 0.15,
['weapon_ziptie']   	         = 0.15,


--------------


    -- Melee
    -- ['weapon_unarmed'] 				 = 0.15,
    ['weapon_dagger']                = 0.15,
    ['weapon_bat']                   = 0.15,
    ['weapon_bottle']                = 0.15,
    ['weapon_crowbar']               = 0.15,
    ['weapon_candycane']             = 0.15,
    -- ['weapon_flashlight'] 			 = 0.15,
    ['weapon_golfclub']              = 0.15,
    ['weapon_hammer']                = 0.15,
    ['weapon_hatchet']               = 0.15,
    ['weapon_knuckle']               = 0.15,
    ['weapon_knife']                 = 0.15,
    ['weapon_machete']               = 0.15,
    ['weapon_switchblade']           = 0.15,
    -- ['weapon_nightstick'] 			 = 0.15,
    ['weapon_wrench']                = 0.15,
    ['weapon_battleaxe']             = 0.15,
    ['weapon_poolcue']               = 0.15,
    ['weapon_briefcase']             = 0.15,
    ['weapon_briefcase_02']          = 0.15,
    ['weapon_garbagebag']            = 0.15,
    ['weapon_handcuffs']             = 0.15,
    ['weapon_bread']                 = 0.15,
    ['weapon_stone_hatchet']         = 0.15,

    -- Handguns
    ['weapon_pistol']                = 0.15,
    ['weapon_pistol_mk2']            = 0.15,
    ['weapon_combatpistol']          = 0.15,
    ['weapon_appistol']              = 0.15,
    -- ['weapon_stungun'] 				 = 0.15,
    -- ['weapon_stungun_mp'] 				 = 0.15,
    ['weapon_pistol50']              = 0.15,
    ['weapon_snspistol']             = 0.15,
    ['weapon_heavypistol']           = 0.15,
    ['weapon_vintagepistol']         = 0.15,
    ['weapon_flaregun']              = 0.15,
    ['weapon_marksmanpistol']        = 0.15,
    ['weapon_revolver']              = 0.15,
    ['weapon_revolver_mk2']          = 0.15,
    ['weapon_doubleaction']          = 0.15,
    ['weapon_snspistol_mk2']         = 0.15,
    ['weapon_raypistol']             = 0.15,
    ['weapon_ceramicpistol']         = 0.15,
    ['weapon_navyrevolver']          = 0.15,
    ['weapon_gadgetpistol']          = 0.15,
    ['weapon_pistolxm3']             = 0.15,

    -- Submachine Guns
    ['weapon_microsmg']              = 0.15,
    ['weapon_smg']                   = 0.15,
    ['weapon_smg_mk2']               = 0.15,
    ['weapon_assaultsmg']            = 0.15,
    ['weapon_combatpdw']             = 0.15,
    ['weapon_machinepistol']         = 0.15,
    ['weapon_minismg']               = 0.15,
    ['weapon_raycarbine']            = 0.15,

    -- Shotguns
    ['weapon_pumpshotgun']           = 0.15,
    ['weapon_sawnoffshotgun']        = 0.15,
    ['weapon_assaultshotgun']        = 0.15,
    ['weapon_bullpupshotgun']        = 0.15,
    ['weapon_musket']                = 0.15,
    ['weapon_heavyshotgun']          = 0.15,
    ['weapon_dbshotgun']             = 0.15,
    ['weapon_autoshotgun']           = 0.15,
    ['weapon_pumpshotgun_mk2']       = 0.15,
    ['weapon_combatshotgun']         = 0.15,

    -- Assault Rifles
    ['weapon_assaultrifle']          = 0.15,
    ['weapon_assaultrifle_mk2']      = 0.15,
    ['weapon_carbinerifle']          = 0.15,
    ['weapon_carbinerifle_mk2']      = 0.15,
    ['weapon_advancedrifle']         = 0.15,
    ['weapon_specialcarbine']        = 0.15,
    ['weapon_bullpuprifle']          = 0.15,
    ['weapon_compactrifle']          = 0.15,
    ['weapon_specialcarbine_mk2']    = 0.15,
    ['weapon_bullpuprifle_mk2']      = 0.15,
    ['weapon_militaryrifle']         = 0.15,
    ['weapon_heavyrifle']            = 0.15,

    -- Light Machine Guns
    ['weapon_mg']                    = 0.15,
    ['weapon_combatmg']              = 0.15,
    ['weapon_gusenberg']             = 0.15,
    ['weapon_combatmg_mk2']          = 0.15,

    -- Sniper Rifles
    ['weapon_sniperrifle']           = 0.15,
    ['weapon_heavysniper']           = 0.15,
    ['weapon_marksmanrifle']         = 0.15,
    ['weapon_remotesniper']          = 0.15,
    ['weapon_heavysniper_mk2']       = 0.15,
    ['weapon_marksmanrifle_mk2']     = 0.15,

    -- Heavy Weapons
    ['weapon_rpg']                   = 0.15,
    ['weapon_grenadelauncher']       = 0.15,
    ['weapon_grenadelauncher_smoke'] = 0.15,
    ['weapon_emplauncher']           = 0.15,
    ['weapon_minigun']               = 0.15,
    ['weapon_firework']              = 0.15,
    ['weapon_railgun']               = 0.15,
    ['weapon_hominglauncher']        = 0.15,
    ['weapon_compactlauncher']       = 0.15,
    ['weapon_rayminigun']            = 0.15,
    ['weapon_railgunxm3']            = 0.15,

    -- Throwables
    ['weapon_grenade']               = 0.15,
    ['weapon_bzgas']                 = 0.15,
    ['weapon_molotov']               = 0.15,
    ['weapon_stickybomb']            = 0.15,
    ['weapon_proxmine']              = 0.15,
    ['weapon_snowball']              = 0.15,
    ['weapon_pipebomb']              = 0.15,
    ['weapon_ball']                  = 0.15,
    ['weapon_smokegrenade']          = 0.15,
    ['weapon_flare']                 = 0.15,

    -- Miscellaneous
    ['weapon_petrolcan']             = 0.15,
    ['weapon_fireextinguisher']      = 0.15,
    ['weapon_hazardcan']             = 0.15,
    ['weapon_fertilizercan']         = 0.15,
}

Config.WeaponRepairPoints = {
    [1] = {
        coords = vector3(964.02, -1267.41, 34.97),
        IsRepairing = false,
        RepairingData = {},
    }
}

Config.WeaponRepairCosts = {
    ["pistol"] = 1000,
    ["smg"] = 3000,
    ["mg"] = 4000,
    ["rifle"] = 5000,
    ["sniper"] = 7000,
    ["shotgun"] = 6000
}

WeaponAttachments = {

    -- KYROS WEAPON PACK V4
    ['WEAPON_GLOCK19'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_PISTOL_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
		['extendedclip'] = {
            component = 'COMPONENT_PISTOL_CLIP_02',
            item = 'pistol_extendedclip',
            type = 'clip',
        },
		['drum'] = {
            component = 'COMPONENT_GLOCK19_CLIP_03',
            item = 'at_clip_drum_pistol',
            type = 'clip',
        },	
    },
    ['WEAPON_GLOCK40'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_PISTOL_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
		['extendedclip'] = {
            component = 'COMPONENT_PISTOL_CLIP_02',
            item = 'pistol_extendedclip',
            type = 'clip',
        },
		['drum'] = {
            component = 'COMPONENT_GLOCK40_CLIP_03',
            item = 'at_clip_drum_pistol',
            type = 'clip',
        },	
		['100roundmag'] = {
            component = 'COMPONENT_GLOCK40_CLIP_04',
            item = 'at_clip_100_pistol',
            type = 'clip',
        },	
    },
    ['WEAPON_GLOCK19X'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_PISTOL_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
		['extendedclip'] = {
            component = 'COMPONENT_PISTOL_CLIP_02',
            item = 'pistol_extendedclip',
            type = 'clip',
        },
		['drum'] = {
            component = 'COMPONENT_GLOCK19X_CLIP_03',
            item = 'at_clip_drum_pistol',
            type = 'clip',
        },	
		['100roundmag'] = {
            component = 'COMPONENT_GLOCK19X_CLIP_04',
            item = 'at_clip_100_pistol',
            type = 'clip',
        },	
    },
	['WEAPON_GLOCK40S'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_COMBATPISTOL_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
		['extendedclip'] = {
            component = 'COMPONENT_COMBATPISTOL_CLIP_02',
            item = 'pistol_extendedclip',
            type = 'clip',
        },
		['drum'] = {
            component = 'COMPONENT_COMBATPISTOL_CLIP_03',
            item = 'at_clip_drum_pistol',
            type = 'clip',
        },	
		['100roundmag'] = {
            component = 'COMPONENT_COMBATPISTOL_CLIP_04',
            item = 'at_clip_100_pistol',
            type = 'clip',
        },	
    },
	['WEAPON_DDM4V5'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_DDM4V5_CLIP_01',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
    },
	['WEAPON_MPX'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MPX_CLIP_01',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
    },
	['WEAPON_PD509'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_COMBATPISTOL_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
    },
	['WEAPON_APS'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_APPISTOL_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
		['extendedclip'] = {
            component = 'COMPONENT_APPISTOL_CLIP_02',
            item = 'pistol_extendedclip',
            type = 'clip',
        },
    },
	['WEAPON_PPK'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_SNSPISTOL_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
    },
	['WEAPON_PITVIPER'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_PITVIPER_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
    },
	['WEAPON_BARP'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_BARP_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
		['extendedclip'] = {
            component = 'COMPONENT_BARP_CLIP_02',
            item = 'pistol_extendedclip',
            type = 'clip',
        },
		['flashlight'] = {
            component = 'COMPONENT_AT_AR_BARPFLSH',
            item = 'pistol_flashlight',
        },
    },
	['WEAPON_RDP'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_PISTOL_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_PI_RAIL',
            item = 'smg_scope',
        },
    },
	['WEAPON_LOK'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_LOK_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_LOKAFGRIP',
            item = 'rifle_grip',
        },
    },
	['WEAPON_PLR'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_PLR_CLIP_01',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
		['extendedclip'] = {
            component = 'COMPONENT_PLR_CLIP_02',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_PLRAFGRIP',
            item = 'rifle_grip',
        },
    },
	['WEAPON_XDS9'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_SNSPISTOL_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
		['extendedclip'] = {
            component = 'COMPONENT_SNSPISTOL_CLIP_02',
            item = 'pistol_extendedclip',
            type = 'clip',
        },
    },
	['WEAPON_PPS'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_SNSPISTOL_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
    },
	['WEAPON_XDME'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_COMBATPISTOL_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
    },
	['WEAPON_SP'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_SP_CLIP_01',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
    },
	['WEAPON_GLOCK17S'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_GLOCK17_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
		['extendedclip'] = {
            component = 'COMPONENT_GLOCK17_CLIP_02',
            item = 'pistol_extendedclip',
            type = 'clip',
        },
    },
	['WEAPON_GLOCK18C'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_GLOCK18C_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
		['extendedclip'] = {
            component = 'COMPONENT_GLOCK18C_CLIP_02',
            item = 'pistol_extendedclip',
            type = 'clip',
        },
		['drum'] = {
            component = 'COMPONENT_GLOCK18C_CLIP_03',
            item = 'at_clip_drum_pistol',
            type = 'clip',
        },
    },
	['WEAPON_GLOCK19S'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_GLOCK19S_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
    },
	['WEAPON_ARPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_ARPISTOL_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
		['extendedclip'] = {
            component = 'COMPONENT_ARPISTOL_BOXMAG',
            item = 'pistol_extendedclip',
            type = 'clip',
        },
		['scope'] = {
            component = 'COMPONENT_AT_ARPISTOLSCOPE_MEDIUM',
            item = 'rifle_scope',
        },
    },
	['WEAPON_GLOCK26S'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_GLOCK26S_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
    },
	['WEAPON_MICRODRACO'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MICRODRACO_CLIP_01',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
    },
	['WEAPON_RUGER57'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_RUGER57_CLIP_01',
            item = 'pistol_extendedclip',
            type = 'clip',
        },
		['flashlight'] = {
            component = 'COMPONENT_AT_PI_RUGER57FLSH',
            item = 'pistol_flashlight',
        },
    },
	['WEAPON_MK18'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MK18_CLIP_01',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
    },
	['WEAPON_ZIPTIE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_ZIPTIE_CLIP_01',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
		['extendedclip'] = {
            component = 'COMPONENT_CARBINERIFLE_BOXMAG',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
	    ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
    },


    	-- GGC Custom Weapons -- Hand Guns
	['WEAPON_GLOCK17'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_GLOCK17_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_GLOCK17_CLIP_02',
            item = 'pistol_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
        },
    },
    ['WEAPON_GLOCK18C'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_APPISTOL_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
    },
    ['WEAPON_GLOCK22'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_PISTOL_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
    },
    ['WEAPON_DEAGLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_DEAGlE_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
    },
    ['WEAPON_FNX45'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_FNX45_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
    },
    ['WEAPON_M1911'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_M1911_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
    },
    ['WEAPON_GLOCK20'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_PISTOL_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
    },
    ['WEAPON_GLOCK19GEN4'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_PISTOL_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
    },
    -- GGC Custom Weapons -- SMGs
    ['WEAPON_PMXFM'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_SMG_CLIP_01',
            item = 'smg_defaultclip',
            type = 'clip',
        },
    },
    ['WEAPON_MAC10'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_SMG_CLIP_01',
            item = 'smg_defaultclip',
            type = 'clip',
        },
    },
	-- GGC Custom Weapons -- Rifles
    ['WEAPON_MK47FM'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MK47_CLIP_01',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
    },
    ['WEAPON_M6IC'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_ASSAULTRIFLE_CLIP_01',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
    },
    ['WEAPON_SCARSC'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_ASSAULTRIFLE_CLIP_01',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
    },
    ['WEAPON_M4'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_M4_CLIP_01',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_M4_CLIP_02',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
    },
    ['WEAPON_AK47'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_AK47_CLIP_01',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_AK47_CLIP_02',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
    },
    ['WEAPON_AK74'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_ASSAULTRIFLE_CLIP_01',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
    },
    ['WEAPON_AKS74'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_ASSAULTRIFLE_CLIP_01',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
    },
    ['WEAPON_GROZA'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_ASSAULTRIFLE_CLIP_01',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
    },
    ['WEAPON_SCARH'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_SCARH_CLIP_01',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_SCARH_CLIP_02',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
    },


    
    -- PISTOLS
    ['WEAPON_PISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_PISTOL_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_PISTOL_CLIP_02',
            item = 'pistol_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP_02',
            item = 'pistol_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_PISTOL_VARMOD_LUXE',
            item = 'pistol_luxuryfinish',
        },
    },
    ['WEAPON_COMBATPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_COMBATPISTOL_CLIP_01',
            item = 'combatpistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_COMBATPISTOL_CLIP_02',
            item = 'combatpistol_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_COMBATPISTOL_VARMOD_LOWRIDER',
            item = 'combatpistol_luxuryfinish',
        },
    },
    ['WEAPON_APPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_APPISTOL_CLIP_01',
            item = 'appistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_APPISTOL_CLIP_02',
            item = 'appistol_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_APPISTOL_VARMOD_LUXE',
            item = 'appistol_luxuryfinish',
        },
    },
    ['WEAPON_PISTOL50'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_PISTOL50_CLIP_01',
            item = 'pistol50_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_PISTOL50_CLIP_02',
            item = 'pistol50_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'pistol_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_PISTOL50_VARMOD_LUXE',
            item = 'pistol50_luxuryfinish',
        },
    },
    ['WEAPON_REVOLVER'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_REVOLVER_CLIP_01',
            item = 'revolver_defaultclip',
        },
        ['vipvariant'] = {
            component = 'COMPONENT_REVOLVER_VARMOD_GOON',
            item = 'revolver_vipvariant',
            type = 'skin',
        },
        ['bodyguardvariant'] = {
            component = 'COMPONENT_REVOLVER_VARMOD_BOSS',
            item = 'revolver_bodyguardvariant',
            type = 'skin',
        },
    },
    ['WEAPON_SNSPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_SNSPISTOL_CLIP_01',
            item = 'snspistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_SNSPISTOL_CLIP_02',
            item = 'snspistol_extendedclip',
            type = 'clip',
        },
        ['grip'] = {
            component = 'COMPONENT_SNSPISTOL_VARMOD_LOWRIDER',
            item = 'snspistol_grip',
        },
    },
    ['WEAPON_HEAVYPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_HEAVYPISTOL_CLIP_01',
            item = 'heavypistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_HEAVYPISTOL_CLIP_02',
            item = 'heavypistol_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_HEAVYPISTOL_VARMOD_LUXE',
            item = 'heavypistol_grip',
        },
    },
    ['WEAPON_VINTAGEPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_VINTAGEPISTOL_CLIP_01',
            item = 'vintagepistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_VINTAGEPISTOL_CLIP_02',
            item = 'vintagepistol_extendedclip',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
            type = 'silencer',
        },
    },
    -- SMG'S
    ['WEAPON_MICROSMG'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MICROSMG_CLIP_01',
            item = 'microsmg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_MICROSMG_CLIP_02',
            item = 'microsmg_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MACRO',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_MICROSMG_VARMOD_LUXE',
            item = 'microsmg_luxuryfinish',
        },
    },
    ['WEAPON_SMG'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_SMG_CLIP_01',
            item = 'smg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_SMG_CLIP_02',
            item = 'smg_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_SMG_CLIP_03',
            item = 'smg_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MACRO_02',
            item = 'smg_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_SMG_VARMOD_LUXE',
            item = 'smg_luxuryfinish',
        },
    },
    ['WEAPON_ASSAULTSMG'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_ASSAULTSMG_CLIP_01',
            item = 'assaultsmg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_ASSAULTSMG_CLIP_02',
            item = 'assaultsmg_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MACRO',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_ASSAULTSMG_VARMOD_LOWRIDER',
            item = 'assaultsmg_luxuryfinish',
        },
    },
    ['WEAPON_MINISMG'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MINISMG_CLIP_01',
            item = 'minismg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_MINISMG_CLIP_02',
            item = 'minismg_extendedclip',
            type = 'clip',
        },
    },
    ['WEAPON_MACHINEPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MACHINEPISTOL_CLIP_01',
            item = 'machinepistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_MACHINEPISTOL_CLIP_02',
            item = 'machinepistol_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_MACHINEPISTOL_CLIP_03',
            item = 'machinepistol_drum',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
        },
    },
    ['WEAPON_COMBATPDW'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_COMBATPDW_CLIP_01',
            item = 'combatpdw_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_COMBATPDW_CLIP_02',
            item = 'combatpdw_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_COMBATPDW_CLIP_03',
            item = 'combatpdw_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'combatpdw_grip',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_SMALL',
            item = 'combatpdw_scope',
        },
    },
    -- SHOTGUNS
    ['WEAPON_PUMPSHOTGUN'] = {
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_SR_SUPP',
            item = 'shotgun_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_PUMPSHOTGUN_VARMOD_LOWRIDER',
            item = 'pumpshotgun_luxuryfinish',
        },
    },
    ['WEAPON_SAWNOFFSHOTGUN'] = {
        ['luxuryfinish'] = {
            component = 'COMPONENT_SAWNOFFSHOTGUN_VARMOD_LUXE',
            item = 'sawnoffshotgun_luxuryfinish',
        },
    },
    ['WEAPON_ASSAULTSHOTGUN'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_ASSAULTSHOTGUN_CLIP_01',
            item = 'assaultshotgun_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_ASSAULTSHOTGUN_CLIP_02',
            item = 'assaultshotgun_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
    },
    ['WEAPON_BULLPUPSHOTGUN'] = {
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
    },
    ['WEAPON_HEAVYSHOTGUN'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_HEAVYSHOTGUN_CLIP_01',
            item = 'heavyshotgun_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_HEAVYSHOTGUN_CLIP_02',
            item = 'heavyshotgun_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_HEAVYSHOTGUN_CLIP_03',
            item = 'heavyshotgun_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
    },
    ['WEAPON_COMBATSHOTGUN'] = {
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
    },
    -- RIFLES
    ['WEAPON_ASSAULTRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_ASSAULTRIFLE_CLIP_01',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_ASSAULTRIFLE_CLIP_02',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_ASSAULTRIFLE_CLIP_03',
            item = 'assaultrifle_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MACRO',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_ASSAULTRIFLE_VARMOD_LUXE',
            item = 'assaultrifle_luxuryfinish',
        },
    },
    ['WEAPON_CARBINERIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_CARBINERIFLE_CLIP_01',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_CARBINERIFLE_CLIP_02',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_CARBINERIFLE_CLIP_03',
            item = 'carbinerifle_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MEDIUM',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_CARBINERIFLE_VARMOD_LUXE',
            item = 'carbinerifle_luxuryfinish',
        },
    },
    ['WEAPON_ADVANCEDRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_ADVANCEDRIFLE_CLIP_01',
            item = 'advancedrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_ADVANCEDRIFLE_CLIP_02',
            item = 'advancedrifle_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_SMALL',
            item = 'combatpdw_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE',
            item = 'advancedrifle_luxuryfinish',
        },
    },
    ['WEAPON_SPECIALCARBINE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_SPECIALCARBINE_CLIP_01',
            item = 'specialcarbine_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_SPECIALCARBINE_CLIP_02',
            item = 'specialcarbine_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_SPECIALCARBINE_CLIP_03',
            item = 'specialcarbine_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MEDIUM',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_SPECIALCARBINE_VARMOD_LOWRIDER',
            item = 'specialcarbine_luxuryfinish',
        },
    },
    ['WEAPON_BULLPUPRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_BULLPUPRIFLE_CLIP_01',
            item = 'bullpuprifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_BULLPUPRIFLE_CLIP_02',
            item = 'bullpuprifle_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_SMALL',
            item = 'combatpdw_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_BULLPUPRIFLE_VARMOD_LOW',
            item = 'bullpuprifle_luxuryfinish',
        },
    },
    ['WEAPON_COMPACTRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_COMPACTRIFLE_CLIP_01',
            item = 'compactrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_COMPACTRIFLE_CLIP_02',
            item = 'compactrifle_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_COMPACTRIFLE_CLIP_03',
            item = 'compactrifle_drum',
            type = 'clip',
        },
    },
    ['WEAPON_HEAVYRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_HEAVYRIFLE_CLIP_01',
            item = 'bullpuprifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_HEAVYRIFLE_CLIP_02',
            item = 'bullpuprifle_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MEDIUM',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_BULLPUPRIFLE_VARMOD_LOW',
            item = 'bullpuprifle_luxuryfinish',
        },
    },
    -- MACHINE GUNS
    ['WEAPON_GUSENBERG'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_GUSENBERG_CLIP_01',
            item = 'gusenberg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_GUSENBERG_CLIP_02',
            item = 'gusenberg_extendedclip',
            type = 'clip',
        },
    },
    -- LAUNCHERS
    ['WEAPON_EMPLAUNCHER'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_EMPLAUNCHER_CLIP_01',
            item = 'emplauncher_defaultclip',
            type = 'clip',
        },
    },
    -- SNIPERS
    ['WEAPON_SNIPERRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_SNIPERRIFLE_CLIP_01',
            item = 'sniperrifle_defaultclip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_LARGE',
            item = 'sniper_scope',
            type = 'scope',
        },
        ['advancedscope'] = {
            component = 'COMPONENT_AT_SCOPE_MAX',
            item = 'snipermax_scope',
            type = 'scope',
        },
        ['grip'] = {
            component = 'COMPONENT_SNIPERRIFLE_VARMOD_LUXE',
            item = 'sniper_grip',
        },
    },
    ['WEAPON_HEAVYSNIPER'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_HEAVYSNIPER_CLIP_01',
            item = 'heavysniper_defaultclip',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_LARGE',
            item = 'sniper_scope',
            type = 'scope',
        },
        ['advancedscope'] = {
            component = 'COMPONENT_AT_SCOPE_MAX',
            item = 'snipermax_scope',
            type = 'scope',
        },
    },
    ['WEAPON_MARKSMANRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MARKSMANRIFLE_CLIP_01',
            item = 'marksmanrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_MARKSMANRIFLE_CLIP_02',
            item = 'marksmanrifle_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM',
            item = 'marksmanrifle_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_MARKSMANRIFLE_VARMOD_LUXE',
            item = 'marksmanrifle_luxuryfinish',
        },
    },
}

local function getConfigWeaponAttachments(weapon)
    return WeaponAttachments[weapon]
end

exports('getConfigWeaponAttachments', getConfigWeaponAttachments)
