Config = Config or {}

Config.ReloadTime = math.random(4000, 6000)

Config.DurabilityBlockedWeapons = {
    "weapon_stungun",
    "weapon_nightstick",
    "weapon_flashlight",
    "weapon_unarmed",
}

Config.Throwables = {
    "stungrenade",
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

	-- Melee

    ['weapon_acwr'] 		= 0.15,
    ['weapon_heavysmg'] 	= 0.15,
    ['weapon_gk47'] 		= 0.15,
    ['weapon_anarchy'] 		= 0.15,
    ['weapon_far'] 		    = 0.15,
    ['weapon_tar21'] 		= 0.15,
    ['weapon_knr'] 		    = 0.15,
    ['weapon_smg9'] 		= 0.15,
    ['weapon_hfap'] 		= 0.15,
    ['weapon_acr'] 		    = 0.15,
    ['weapon_ump45'] 		= 0.15,
    ['weapon_sm237'] 		= 0.15,
    ['weapon_m82'] 		    = 0.15,
    ['weapon_sb181'] 		= 0.15,
    ['weapon_ss2_2'] 		= 0.15,
    ['weapon_r99'] 		    = 0.15,
    ['weapon_gys'] 		    = 0.15,
    ['weapon_art64'] 		= 0.15,
    ['weapon_akpu'] 		= 0.15,
    ['weapon_an94_2'] 		= 0.15,
    ['weapon_dcs'] 		    = 0.15,
    ['weapon_m90s'] 	    = 0.15,
    ['weapon_lgwii']        = 0.15,
    ['weapon_pl14'] 	    = 0.15,
    ['weapon_scarsc'] 	    = 0.15,
    ['weapon_va030'] 	    = 0.15,
    ['weapon_ar727'] 	    = 0.15,
    ['weapon_smg1311'] 	    = 0.15,
    ['weapon_ar121'] 	    = 0.15,
    ['weapon_cz75'] 	    = 0.15,
    ['weapon_ssr56'] 		= 0.15,
    ['weapon_scifw'] 		= 0.15,
    ['weapon_anr15'] 		= 0.15,
    ['weapon_dks501'] 		= 0.15,
    ['weapon_owshotgun']    = 0.15,
    ['weapon_book'] 		= 0.15,
    ['weapon_highboot'] 	= 0.15,
    ['weapon_energyknife'] 	= 0.15,
    ['weapon_karambit'] 	= 0.15,
    ['weapon_brick'] 		= 0.15,
    ['weapon_limpid'] 		= 0.15,
    ['weapon_pasmg'] 		= 0.15,
    ['weapon_l85'] 		    = 0.15,
    ['weapon_akbg'] 		= 0.15,
    ['weapon_benellim4'] 	= 0.15,
    ['weapon_gvandal'] 		= 0.15,
    ['weapon_autosmg'] 		= 0.15,
    ['weapon_mx4'] 		    = 0.15,
    ['weapon_anm4'] 		= 0.15,
    ['weapon_truvelo'] 		= 0.15,

    
	-- ['weapon_unarmed'] 				 = 0.05,
	['weapon_dagger'] 				 = 0.05,
	['weapon_bat'] 				 	 = 0.05,
	['weapon_bottle'] 				 = 0.05,
	['weapon_crowbar'] 				 = 0.05,
	-- ['weapon_flashlight'] 			 = 0.05,
	['weapon_golfclub'] 			 = 0.05,
	['weapon_hammer'] 				 = 0.05,
	['weapon_hatchet'] 				 = 0.05,
	['weapon_knuckle'] 				 = 0.05,
	['weapon_knife'] 				 = 0.05,
	['weapon_machete'] 				 = 0.05,
	['weapon_switchblade'] 			 = 0.05,
	-- ['weapon_nightstick'] 			 = 0.05,
	['weapon_wrench'] 				 = 0.05,
	['weapon_battleaxe'] 			 = 0.05,
	['weapon_poolcue'] 				 = 0.05,
	['weapon_briefcase'] 			 = 0.05,
	['weapon_briefcase_02'] 		 = 0.05,
	['weapon_garbagebag'] 			 = 0.05,
	['weapon_handcuffs'] 			 = 0.05,
	['weapon_bread'] 				 = 0.05,
	['weapon_stone_hatchet'] 		 = 0.05,

	-- Handguns
	['weapon_pistol'] 				 = 0.05,
	['weapon_pistol_mk2'] 			 = 0.05,
	['weapon_combatpistol'] 		 = 0.05,
	['weapon_appistol'] 			 = 0.05,
	-- ['weapon_stungun'] 				 = 0.05,
    -- ['weapon_stungun_mp'] 				 = 0.05,
	['weapon_pistol50'] 			 = 0.05,
	['weapon_snspistol'] 			 = 0.05,
	['weapon_heavypistol'] 			 = 0.05,
	['weapon_vintagepistol'] 		 = 0.05,
	['weapon_flaregun'] 			 = 0.05,
	['weapon_marksmanpistol'] 		 = 0.05,
	['weapon_revolver'] 			 = 0.05,
	['weapon_revolver_mk2'] 		 = 0.05,
	['weapon_doubleaction'] 		 = 0.05,
	['weapon_snspistol_mk2'] 		 = 0.05,
	['weapon_raypistol'] 			 = 0.05,
	['weapon_ceramicpistol'] 		 = 0.05,
	['weapon_navyrevolver'] 		 = 0.05,
	['weapon_gadgetpistol'] 		 = 0.05,

	-- Submachine Guns
	['weapon_microsmg'] 			 = 0.05,
	['weapon_smg'] 				     = 0.05,
	['weapon_smg_mk2'] 				 = 0.05,
	['weapon_assaultsmg'] 			 = 0.05,
	['weapon_combatpdw'] 			 = 0.05,
	['weapon_machinepistol'] 		 = 0.05,
	['weapon_minismg'] 				 = 0.05,
	['weapon_raycarbine'] 			 = 0.05,

	-- Shotguns
	['weapon_pumpshotgun'] 			= 0.05,
	['weapon_sawnoffshotgun'] 		= 0.05,
	['weapon_assaultshotgun'] 		= 0.05,
	['weapon_bullpupshotgun'] 		= 0.05,
	['weapon_musket'] 				= 0.05,
	['weapon_heavyshotgun'] 		= 0.05,
	['weapon_dbshotgun'] 			= 0.05,
	['weapon_autoshotgun'] 			= 0.05,
	['weapon_pumpshotgun_mk2'] 		= 0.05,
	['weapon_combatshotgun'] 		= 0.05,

	-- Assault Rifles
	['weapon_assaultrifle'] 		= 0.05,
	['weapon_assaultrifle_mk2'] 	= 0.05,
	['weapon_carbinerifle'] 		= 0.05,
	['weapon_carbinerifle_mk2'] 	= 0.05,
	['weapon_advancedrifle'] 		= 0.05,
	['weapon_specialcarbine'] 		= 0.05,
	['weapon_bullpuprifle'] 		= 0.05,
	['weapon_compactrifle'] 		= 0.05,
	['weapon_specialcarbine_mk2'] 	= 0.05,
	['weapon_bullpuprifle_mk2'] 	= 0.05,
	['weapon_militaryrifle'] 		= 0.05,
    ['weapon_heavyrifle']           = 0.05,

	-- Light Machine Guns
	['weapon_mg'] 				    = 0.05,
	['weapon_combatmg'] 			= 0.05,
	['weapon_gusenberg'] 			= 0.05,
	['weapon_combatmg_mk2'] 		= 0.05,

	-- Sniper Rifles
	['weapon_sniperrifle'] 			= 0.05,
	['weapon_heavysniper'] 			= 2.0,
	['weapon_marksmanrifle'] 		= 0.05,
	['weapon_remotesniper'] 		= 0.05,
	['weapon_heavysniper_mk2'] 		= 0.05,
	['weapon_marksmanrifle_mk2'] 	= 0.05,

	-- Heavy Weapons
	['weapon_rpg'] 				    = 20.0,
	['weapon_grenadelauncher'] 		= 0.05,
	['weapon_grenadelauncher_smoke']= 0.05,
    ['weapon_emplauncher']          = 0.05,
	['weapon_minigun'] 				= 0.05,
	['weapon_firework'] 			= 0.05,
	['weapon_railgun'] 				= 0.05,
	['weapon_hominglauncher'] 		= 0.05,
	['weapon_compactlauncher'] 		= 0.05,
	['weapon_rayminigun'] 			= 0.05,

	-- Throwables
	['weapon_grenade'] 				= 0.05,
	['weapon_bzgas'] 				= 0.05,
	['weapon_molotov'] 				= 0.05,
	['weapon_stickybomb'] 			= 0.05,
	['weapon_proxmine'] 			= 0.05,
	['weapon_snowball'] 			= 0.05,
	['weapon_pipebomb'] 			= 0.05,
	['weapon_ball'] 				= 0.05,
	['weapon_smokegrenade'] 		= 0.05,
	['weapon_flare'] 				= 0.05,

	-- Miscellaneous
	['weapon_petrolcan'] 			= 0.05,
	['weapon_fireextinguisher'] 	= 0.05,
	['weapon_hazardcan'] 			= 0.05,
    ['weapon_fertilizercan'] 		= 0.05,

    --Custom Weapons
    ['weapon_de'] 	            = 0.05,
    ['weapon_fnx45'] 			= 0.05,
    ['weapon_glock17'] 		    = 0.05,
    ['weapon_m4'] 			    = 0.05,
    ['weapon_hk416'] 			= 0.05,
    ['weapon_mk14'] 			= 0.05,
    ['weapon_m110'] 			= 0.05,
    ['weapon_huntingrifle'] 	= 0.30,
    ['weapon_ar15'] 			= 0.05,
    ['weapon_m9'] 	            = 0.05,
    ['weapon_m70'] 			    = 0.05,
    ['weapon_m1911'] 		    = 0.05,
    ['weapon_mac10'] 			= 0.05,
    ['weapon_mp9'] 	            = 0.05,
    ['weapon_mossberg'] 		= 0.05,
    ['weapon_remington'] 		= 0.05,
    ['weapon_scarh'] 			= 0.05,
    ['weapon_shiv'] 	        = 0.05,
    ['weapon_katana'] 	        = 0.05,
    ['weapon_sledgehammer'] 	= 0.05,
    ['weapon_mp5'] 			    = 0.05,
    ['weapon_glock18c'] 		= 0.05,
    ['weapon_glock22'] 			= 0.05,
    ['weapon_aks74'] 			= 0.05, 
    ['weapon_ak74'] 			= 0.05,
    ['weapon_victusxmr'] 		= 2.50,

    ['weapon_a15rc'] 		= 0.05,
	['weapon_ak47s'] 		= 0.05,
	['weapon_famasu1'] 		= 0.05,
	['weapon_grau'] 		= 0.05,
    ['weapon_iar'] 		    = 0.05,
    ['weapon_jrbak'] 		= 0.05,
	['weapon_m133'] 		= 0.05,
	['weapon_neva'] 		= 0.05,
	['weapon_sb4s'] 		= 0.05,
	['weapon_sr47'] 		= 0.05,
    ['weapon_akmkh'] 		= 0.05,
    ['weapon_casr'] 		= 0.05,
	['weapon_bulldog'] 		= 0.05,
    ['weapon_fn42'] 		= 0.05,
	['weapon_fmr'] 		    = 0.05,
	['weapon_drh'] 		    = 0.05,
	['weapon_galilar'] 		= 0.05,
	['weapon_ak4k'] 		= 0.05,
	['weapon_m16a3'] 		= 0.05,
	['weapon_slr15'] 		= 0.05,
    ['weapon_ars'] 		    = 0.05,
    ['weapon_arc15'] 		= 0.05,
    ['weapon_fn502'] 		= 0.05,
    ['weapon_howa_2'] 		= 0.05,
    ['weapon_safak'] 		= 0.05,
    ['weapon_h2smg'] 		= 0.05,
    ['weapon_hfsmg'] 		= 0.05,
    ['weapon_sar'] 		    = 0.05,
    ['weapon_mza'] 		    = 0.05,
    ['weapon_sfak'] 		= 0.05,
	['weapon_sf2'] 		    = 0.05,
    ['weapon_g36'] 		    = 0.05,
    ['weapon_arma1'] 		= 0.05,
    ['weapon_nanite'] 		= 0.05,
    ['weapon_lr300'] 		= 0.05,
    ['weapon_ms32'] 		= 0.05,
    ['weapon_m416p'] 		= 0.05,
    ['weapon_ue4'] 		    = 0.05,
    ['weapon_sarb'] 		= 0.05,
    ['weapon_sfrifle'] 		= 0.05,
    ['weapon_idw'] 		    = 0.05,
    ['weapon_cfs'] 		    = 0.05,
    ['weapon_aug'] 		    = 0.05,
    ['weapon_groza'] 		= 0.05,
    ['weapon_sunda'] 		= 0.05,
    ['weapon_uzi'] 		    = 0.05,
    ['weapon_ak47'] 		= 0.05,
    ['weapon_ditdg'] 		= 0.05,
    ['weapon_g3_2'] 		= 0.05,
    ['weapon_awp'] 		    = 2.50,





        --Custom Weapons
 
        ['WEAPON_PERFORATOR'] 		     = 0.05,
        ['WEAPON_BLUEBFKNIFE'] 			 = 0.05,
        ['WEAPON_BFKNIFE'] 				 = 0.05,
        ['WEAPON_CHBFKNIFE'] 			 = 0.05,
        ['WEAPON_CRIMSONBFKNIFE'] 		 = 0.05,
        ['WEAPON_FADEBFKNIFE'] 			 = 0.05,
        ['WEAPON_FLIPKNIFE'] 			 = 0.05,
        ['WEAPON_FORESTBFKNIFE'] 		 = 0.05,
        ['WEAPON_GUTKNIFE'] 			 = 0.05,
        ['WEAPON_HUNTSMANKNIFE'] 		 = 0.05,
        ['WEAPON_KARAMBITKNIFE'] 		 = 0.05,
        ['WEAPON_SAFARIBFKNIFE'] 		 = 0.05,
        ['WEAPON_SCORCHEDBFKNIFE'] 		 = 0.05,
        ['WEAPON_SLAUGHTERBFKNIFE'] 	 = 0.05,
        ['WEAPON_STAINEDRBFKNIFE'] 		 = 0.05,
        ['WEAPON_URBANRBFKNIFE'] 		 = 0.05,
}

Config.WeaponRepairPoints = {
    [1] = {
        coords = vector3(-1725.59, -2099.46, -40.55),
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
    
    -- Do It Digital Weapons
     -- Do It Digital Weapons
     ['WEAPON_A15RC'] = {
        ['defaultclip'] = {
            component = 'w_ar_a15rc_mag1',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_a15rc_mag2',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_a15rc_scope',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_a15rc_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_a15rc_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_AK47S'] = {
        ['defaultclip'] = {
            component = 'w_ar_ak47s_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_ak47s_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_ak47s_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_ak47s_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_ak47s_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_FAMASU1'] = {
        ['defaultclip'] = {
            component = 'w_ar_famasu1_mag1',
            item = 'advancedrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_famasu1_mag2',
            item = 'advancedrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_famasu1_scope',
            item = 'combatpdw_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_famasu1_supp',
            item = 'rifle_suppressor',
        },
    },
    --
    ['WEAPON_GRAU'] = {
        ['defaultclip'] = {
            component = 'w_ar_grau_mag1',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_grau_mag2',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_grau_scope',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_grau_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_grau_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_IAR'] = {
        ['defaultclip'] = {
            component = 'w_ar_iar_mag1',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_iar_mag2',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_iar_scope',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_iar_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_iar_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_JRBAK'] = {
        ['defaultclip'] = {
            component = 'w_ar_jrbak_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_jrbak_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_jrbak_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_jrbak_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_jrbak_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_M133'] = {
        ['defaultclip'] = {
            component = 'w_ar_m133_mag1',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_m133_mag2',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_m133_scope',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_m133_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_m133_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_NEVA'] = {
        ['defaultclip'] = {
            component = 'w_ar_neva_mag1',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_neva_mag2',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_neva_scope',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_neva_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_neva_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_SB4S'] = {
        ['defaultclip'] = {
            component = 'w_sb_sb4s_mag1',
            item = 'smg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_sb_sb4s_mag2',
            item = 'smg_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_sb_sb4s_scope',
            item = 'smg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_sb_sb4s_supp',
            item = 'pistol_suppressor',
        },
    },
    --
    ['WEAPON_SR47'] = {
        ['defaultclip'] = {
            component = 'w_ar_sr47_mag1',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_sr47_mag2',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_sr47_scope',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_sr47_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_sr47_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_AKMKH'] = {
        ['defaultclip'] = {
            component = 'w_ar_akmkh_mag1',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_akmkh_mag2',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_akmkh_scope',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_akmkh_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_akmkh_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_CASR'] = {
        ['defaultclip'] = {
            component = 'w_ar_casr_mag1',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_casr_mag2',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_casr_scope',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_casr_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_casr_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_BULLDOG'] = {
        ['defaultclip'] = {
            component = 'w_ar_bulldog_mag1',
            item = 'advancedrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_bulldog_mag2',
            item = 'advancedrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_bulldog_scope',
            item = 'combatpdw_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_bulldog_supp',
            item = 'rifle_suppressor',
        },
    },
    --
    ['WEAPON_FN42'] = {
        ['defaultclip'] = {
            component = 'w_ar_fn42_mag1',
            item = 'advancedrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_fn42_mag2',
            item = 'advancedrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_fn42_scope',
            item = 'combatpdw_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_fn42_supp',
            item = 'rifle_suppressor',
        },
    },
    --
    ['WEAPON_FMR'] = {
        ['defaultclip'] = {
            component = 'w_ar_fmr_mag1',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_fmr_mag2',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_fmr_scope',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_fmr_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_fmr_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_DRH'] = {
        ['defaultclip'] = {
            component = 'w_ar_drh_mag1',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_drh_mag2',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_drh_scope',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_drh_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_drh_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_GALILAR'] = {
        ['defaultclip'] = {
            component = 'w_ar_galilar_mag1',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_galilar_mag2',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_galilar_scope',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_galilar_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_galilar_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_AK4K'] = {
        ['defaultclip'] = {
            component = 'w_ar_ak4k_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_ak4k_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_ak4k_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_ak4k_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_ak4k_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_M16A3'] = {
        ['defaultclip'] = {
            component = 'w_ar_m16a3_mag1',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_m16a3_mag2',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_m16a3_scope',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_m16a3_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_m16a3_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_SLR15'] = {
        ['defaultclip'] = {
            component = 'w_ar_slr15_mag1',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_slr15_mag2',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_slr15_scope',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_slr15_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_slr15_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_ARS'] = {
        ['defaultclip'] = {
            component = 'w_ar_ars_mag1',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_ars_mag2',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_ars_scope',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_ars_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_ars_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_ARC15'] = {
        ['defaultclip'] = {
            component = 'w_ar_arc15_mag1',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_arc15_mag2',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_arc15_scope',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_arc15_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_arc15_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_FN502'] = {
        ['defaultclip'] = {
            component = 'w_pi_fn502_mag1',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_pi_fn502_mag2',
            item = 'pistol_extendedclip',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'w_at_pi_fn502_supp',
            item = 'pistol_suppressor',
        },
    },
    --
    ['WEAPON_HOWA_2'] = {
        ['defaultclip'] = {
            component = 'w_ar_howa_2_mag1',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_howa_2_mag2',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_howa_2_scope',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_howa_2_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_howa_2_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_SAFAK'] = {
        ['defaultclip'] = {
            component = 'w_ar_safak_mag1',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_safak_mag2',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_safak_scope',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_safak_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_safak_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_H2SMG'] = {
        ['defaultclip'] = {
            component = 'w_sb_h2smg_mag1',
            item = 'smg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_sb_h2smg_mag2',
            item = 'smg_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_sb_h2smg_scope',
            item = 'smg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_sb_h2smg_supp',
            item = 'pistol_suppressor',
        },
    },
    --
    ['WEAPON_HFSMG'] = {
        ['defaultclip'] = {
            component = 'w_sb_hfsmg_mag1',
            item = 'smg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_sb_hfsmg_mag2',
            item = 'smg_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_sb_hfsmg_scope',
            item = 'smg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_sb_hfsmg_supp',
            item = 'pistol_suppressor',
        },
    },
    --
    ['WEAPON_SAR'] = {
        ['defaultclip'] = {
            component = 'w_ar_sar_mag1',
            item = 'advancedrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_sar_mag2',
            item = 'advancedrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_sar_scope',
            item = 'combatpdw_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_sar_supp',
            item = 'rifle_suppressor',
        },
    },
    --
    ['WEAPON_MZA'] = {
        ['defaultclip'] = {
            component = 'w_ar_mza_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_mza_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_mza_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_mza_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_mza_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_SFAK'] = {
        ['defaultclip'] = {
            component = 'w_ar_sfak_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_sfak_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_sfak_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_sfak_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_sfak_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_SF2'] = {
        ['defaultclip'] = {
            component = 'w_ar_sf2_mag1',
            item = 'advancedrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_sf2_mag2',
            item = 'advancedrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_sf2_scope',
            item = 'combatpdw_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_sf2_supp',
            item = 'rifle_suppressor',
        },
    },
    --
    ['WEAPON_SFRIFLE'] = {
        ['defaultclip'] = {
            component = 'w_ar_sfrifle_mag1',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_sfrifle_mag2',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_sfrifle_scope',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_sfrifle_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_sfrifle_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_SARB'] = {
        ['defaultclip'] = {
            component = 'w_sb_sarb_mag1',
            item = 'smg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_sb_sarb_mag2',
            item = 'smg_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_sb_sarb_scope',
            item = 'smg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_sb_sarb_supp',
            item = 'pistol_suppressor',
        },
    },
    --
    ['WEAPON_UE4'] = {
        ['defaultclip'] = {
            component = 'w_sb_ue4_mag1',
            item = 'smg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_sb_ue4_mag2',
            item = 'smg_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_sb_ue4_scope',
            item = 'smg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_sb_ue4_supp',
            item = 'pistol_suppressor',
        },
    },
    --
    ['WEAPON_M416P'] = {
        ['defaultclip'] = {
            component = 'w_ar_m416p_mag1',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_m416p_mag2',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_m416p_scope',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_m416p_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_m416p_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_MS32'] = {
        ['defaultclip'] = {
            component = 'w_sb_ms32_mag1',
            item = 'smg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_sb_ms32_mag2',
            item = 'smg_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_sb_ms32_scope',
            item = 'smg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_sb_ms32_supp',
            item = 'pistol_suppressor',
        },
    },
    --
    ['WEAPON_LR300'] = {
        ['defaultclip'] = {
            component = 'w_ar_lr300_mag1',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_lr300_mag2',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_lr300_scope',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_lr300_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_lr300_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_NANITE'] = {
        ['defaultclip'] = {
            component = 'w_ar_nanite_mag1',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_nanite_mag2',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_nanite_scope',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_nanite_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_nanite_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_ARMA1'] = {
        ['defaultclip'] = {
            component = 'w_ar_arma1_mag1',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_arma1_mag2',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_arma1_scope',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_arma1_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_arma1_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_G36'] = {
        ['defaultclip'] = {
            component = 'w_ar_g36_mag1',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_g36_mag2',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_g36_scope',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_g36_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_g36_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_IDW'] = {
        ['defaultclip'] = {
            component = 'w_sb_idw_mag1',
            item = 'smg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_sb_idw_mag2',
            item = 'smg_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_sb_idw_scope',
            item = 'smg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_sb_idw_supp',
            item = 'pistol_suppressor',
        },
    },
    --
    ['WEAPON_CFS'] = {
        ['defaultclip'] = {
            component = 'w_ar_cfs_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_cfs_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_cfs_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_cfs_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_cfs_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_AUG'] = {
        ['defaultclip'] = {
            component = 'w_ar_aug_mag1',
            item = 'advancedrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_aug_mag2',
            item = 'advancedrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_aug_scope',
            item = 'combatpdw_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_aug_supp',
            item = 'rifle_suppressor',
        },
    },
    --
    ['WEAPON_GROZA'] = {
        ['defaultclip'] = {
            component = 'w_ar_groza_mag1',
            item = 'advancedrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_groza_mag2',
            item = 'advancedrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_groza_scope',
            item = 'combatpdw_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_groza_supp',
            item = 'rifle_suppressor',
        },
    },
    --
    ['WEAPON_SUNDA'] = {
        ['defaultclip'] = {
            component = 'w_ar_sunda_mag1',
            item = 'advancedrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_sunda_mag2',
            item = 'advancedrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_sunda_scope',
            item = 'combatpdw_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_sunda_supp',
            item = 'rifle_suppressor',
        },
    },
    --
    ['WEAPON_UZI'] = {
        ['defaultclip'] = {
            component = 'w_sb_uzi_mag1',
            item = 'smg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_sb_uzi_mag2',
            item = 'smg_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_sb_uzi_scope',
            item = 'smg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_sb_uzi_supp',
            item = 'pistol_suppressor',
        },
    },
    --
    ['WEAPON_AK47'] = {
        ['defaultclip'] = {
            component = 'w_ar_ak47_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_ak47_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_ak47_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_ak47_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_ak47_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_DITDG'] = {
        ['defaultclip'] = {
            component = 'w_sr_ditdg_mag1',
            item = 'sniperrifle_defaultclip',
        },
        ['suppressor'] = {
            component = 'w_at_sr_ditdg_supp',
            item = 'smg_suppressor',
        },
    },
    --
    ['WEAPON_G3_2'] = {
        ['defaultclip'] = {
            component = 'w_ar_g3_2_mag1',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_g3_2_mag2',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_g3_2_scope',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_g3_2_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_g3_2_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_AWP'] = {
        ['defaultclip'] = {
            component = 'w_sr_awp_mag1',
            item = 'sniperrifle_defaultclip',
        },
        ['suppressor'] = {
            component = 'w_at_sr_awp_supp',
            item = 'smg_suppressor',
        },
    },
    --
    ['WEAPON_ACWR'] = {
        ['defaultclip'] = {
            component = 'w_ar_acwr_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_acwr_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_acwr_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_acwr_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_acwr_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_HEAVYSMG'] = {
        ['defaultclip'] = {
            component = 'w_sb_heavysmg_mag1',
            item = 'smg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_sb_heavysmg_mag2',
            item = 'smg_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_sb_heavysmg_scope',
            item = 'smg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_sb_heavysmg_supp',
            item = 'pistol_suppressor',
        },
        ['grip'] = {
            component = 'w_at_sb_heavysmg_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_GK47'] = {
        ['defaultclip'] = {
            component = 'w_ar_gk47_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_gk47_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_gk47_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_gk47_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_gk47_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_ANARCHY'] = {
        ['defaultclip'] = {
            component = 'w_ar_anarchy_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_anarchy_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_anarchy_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_anarchy_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_anarchy_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_FAR'] = {
        ['defaultclip'] = {
            component = 'w_ar_far_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_far_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_far_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_far_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_far_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_TAR21'] = {
        ['defaultclip'] = {
            component = 'w_ar_tar21_mag1',
            item = 'advancedrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_tar21_mag2',
            item = 'advancedrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_tar21_scope',
            item = 'combatpdw_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_tar21_supp',
            item = 'rifle_suppressor',
        },
    },
    --
    ['WEAPON_KNR'] = {
        ['defaultclip'] = {
            component = 'w_pi_knr_mag1',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'w_at_pi_knr_comp',
            item = 'pistol_suppressor',
        },
        ['flashlight'] = {
            component = 'w_at_pi_knr_flsh',
            item = 'pistol_flashlight',
        },
        ['scope'] = {
            component = 'w_at_pi_knr_scope',
            item = 'microsmg_scope',
        },
    },
    --  
    ['WEAPON_SMG9'] = {
        ['defaultclip'] = {
            component = 'w_sb_smg9_mag1',
            item = 'smg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_sb_smg9_mag2',
            item = 'smg_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_sb_smg9_scope',
            item = 'smg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_sb_smg9_supp',
            item = 'pistol_suppressor',
        },
        ['grip'] = {
            component = 'w_at_sb_smg9_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_HFAP'] = {
        ['defaultclip'] = {
            component = 'w_pi_hfap_mag1',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
    },
    ['extendedclip'] = {
        component = 'w_pi_hfap_mag2',
        item = 'pistol_extendedclip',
        type = 'clip',
    },
    ['suppressor'] = {
        component = 'w_at_pi_hfap_supp',
        item = 'pistol_suppressor',
    },
    --
    ['WEAPON_ACR'] = {
        ['defaultclip'] = {
            component = 'w_ar_acr_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_acr_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_acr_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_acr_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_acr_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_UMP45'] = {
        ['defaultclip'] = {
            component = 'w_sb_ump45_mag1',
            item = 'smg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_sb_ump45_mag2',
            item = 'smg_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_sb_ump45_scope',
            item = 'smg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_sb_ump45_supp',
            item = 'pistol_suppressor',
        },
        ['grip'] = {
            component = 'w_at_sb_ump45_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_SM237'] = {
        ['defaultclip'] = {
            component = 'w_ar_sm237_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_sm237_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_sm237_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_sm237_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_sm237_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_M82'] = {
        ['defaultclip'] = {
            component = 'w_ar_m82_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_m82_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_m82_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_m82_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_m82_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_SB181'] = {
        ['defaultclip'] = {
            component = 'w_sb_sb181_mag1',
            item = 'smg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_sb_sb181_mag2',
            item = 'smg_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_sb_sb181_scope',
            item = 'smg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_sb_sb181_supp',
            item = 'pistol_suppressor',
        },
    },
    --
    ['WEAPON_SS2_2'] = {
        ['defaultclip'] = {
            component = 'w_ar_ss2_2_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_ss2_2_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_ss2_2_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_ss2_2_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_ss2_2_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_R99'] = {
        ['defaultclip'] = {
            component = 'w_sb_r99_mag1',
            item = 'smg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_sb_r99_mag2',
            item = 'smg_extendedclip',
            type = 'clip',
        },
    },
    --
    ['WEAPON_GYS'] = {
        ['defaultclip'] = {
            component = 'w_ar_gys_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_gys_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_gys_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_gys_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_gys_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_ART64'] = {
        ['defaultclip'] = {
            component = 'w_ar_art64_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_art64_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_art64_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_art64_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_art64_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_AKPU'] = {
        ['defaultclip'] = {
            component = 'w_ar_akpu_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_akpu_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_akpu_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_akpu_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_akpu_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_AN94_2'] = {
        ['defaultclip'] = {
            component = 'w_ar_an94_2_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_an94_2_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_an94_2_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_an94_2_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_an94_2_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_DCS'] = {
        ['defaultclip'] = {
            component = 'w_sg_dcs_mag1',
            item = 'assaultshotgun_defaultclip',
            type = 'clip',
        },
        ['grip'] = {
            component = 'w_at_sg_dcs_grip',
            item = 'rifle_grip',
        },
        ['suppressor'] = {
            component = 'w_at_sg_dcs_supp',
            item = 'shotgun_suppressor',
        },
    },
    --
    ['WEAPON_M90S'] = {
        ['defaultclip'] = {
            component = 'w_sg_m90s_mag1',
            item = 'assaultshotgun_defaultclip',
            type = 'clip',
        },
    },
    --
    ['WEAPON_LGWII'] = {
        ['defaultclip'] = {
            component = 'w_ar_lgwii_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_lgwii_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['grip'] = {
            component = 'w_at_ar_lgwii_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_PL14'] = {
        ['defaultclip'] = {
            component = 'w_pi_pl14_mag1',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_pi_pl14_mag2',
            item = 'pistol_extendedclip',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'w_at_pi_pl14_supp',
            item = 'pistol_suppressor',
        },
    },
    --
    ['WEAPON_SCARSC'] = {
        ['defaultclip'] = {
            component = 'w_ar_scarsc_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_scarsc_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_scarsc_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_scarsc_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_scarsc_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_VA030'] = {
        ['defaultclip'] = {
            component = 'w_ar_va030_mag1',
            item = 'smg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_va030_mag2',
            item = 'smg_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_va030_scope',
            item = 'smg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_va030_supp',
            item = 'pistol_suppressor',
        },
    },
    --
    ['WEAPON_AR727'] = {
        ['defaultclip'] = {
            component = 'w_ar_ar727_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_ar727_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_ar727_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_ar727_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_ar727_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_SMG1311'] = {
        ['defaultclip'] = {
            component = 'w_sb_smg1311_mag1',
            item = 'smg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_sb_smg1311_mag2',
            item = 'smg_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_sb_smg1311_scope',
            item = 'smg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_sb_smg1311_supp',
            item = 'pistol_suppressor',
        },
    },
    --
    ['WEAPON_AR121'] = {
        ['defaultclip'] = {
            component = 'w_ar_ar121_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_ar121_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_ar121_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_ar121_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_ar121_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_CZ75'] = {
        ['defaultclip'] = {
            component = 'w_pi_cz75_mag1',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_pi_cz75_mag2',
            item = 'pistol_extendedclip',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'w_at_pi_cz75_supp',
            item = 'pistol_suppressor',
        },
    },
    --
    ['WEAPON_SSR56'] = {
        ['defaultclip'] = {
            component = 'w_ar_ssr56_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_ssr56_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_ssr56_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_ssr56_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_ssr56_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_SCIFW'] = {
        ['defaultclip'] = {
            component = 'w_ar_scifw_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_scifw_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_scifw_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_scifw_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_scifw_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_ANR15'] = {
        ['defaultclip'] = {
            component = 'w_ar_anr15_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_anr15_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_anr15_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_anr15_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_anr15_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_DKS501'] = {
        ['defaultclip'] = {
            component = 'w_ar_dks501_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_dks501_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_dks501_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_dks501_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_dks501_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_KARAMBIT'] = {
    },
    --
    ['WEAPON_OWSHOTGUN'] = {
    },
    --
    ['WEAPON_ENERGYKNIFE'] = {
    },
    --
    ['WEAPON_BOOK'] = {
    },
    --
    ['WEAPON_BRICK'] = {
    },
    --
    --
    ['WEAPON_HIGHBOOT'] = {
    },
    --
    ['WEAPON_LIMPID'] = {
        ['defaultclip'] = {
            component = 'w_ar_limpid_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_limpid_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_limpid_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_limpid_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_limpid_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_PASMG'] = {
        ['defaultclip'] = {
            component = 'w_sb_pasmg_mag1',
            item = 'smg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_sb_pasmg_mag2',
            item = 'smg_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_sb_pasmg_scope',
            item = 'smg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_sb_pasmg_supp',
            item = 'pistol_suppressor',
        },
    },
    --
    ['WEAPON_L85'] = {
        ['defaultclip'] = {
            component = 'w_ar_l85_mag1',
            item = 'advancedrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_l85_mag2',
            item = 'advancedrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_l85_scope',
            item = 'combatpdw_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_l85_supp',
            item = 'rifle_suppressor',
        },
    },
    --
    ['WEAPON_AKBG'] = {
        ['defaultclip'] = {
            component = 'w_ar_akbg_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_akbg_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_akbg_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_akbg_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_akbg_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_BENELLIM4'] = {
        ['suppressor'] = {
            component = 'w_at_sg_benellim4_supp',
            item = 'shotgun_suppressor',
        },
    },
    --
    ['WEAPON_GVANDAL'] = {
        ['defaultclip'] = {
            component = 'w_ar_gvandal_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_gvandal_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_gvandal_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_gvandal_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_gvandal_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_PASMG'] = {
        ['defaultclip'] = {
            component = 'w_sb_autosmg_mag1',
            item = 'smg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_sb_autosmg_mag2',
            item = 'smg_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_sb_autosmg_scope',
            item = 'smg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_sb_autosmg_supp',
            item = 'pistol_suppressor',
        },
        ['grip'] = {
            component = 'w_at_sb_autosmg_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_MX4'] = {
        ['defaultclip'] = {
            component = 'w_sb_mx4_mag1',
            item = 'smg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_sb_mx4_mag2',
            item = 'smg_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_sb_mx4_scope',
            item = 'smg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_sb_mx4_supp',
            item = 'pistol_suppressor',
        },
        ['grip'] = {
            component = 'w_at_sb_mx4_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_ANM4'] = {
        ['defaultclip'] = {
            component = 'w_ar_anm4_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_anm4_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_anm4_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_anm4_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_anm4_grip',
            item = 'rifle_grip',
        },
    },
    --
    ['WEAPON_TRUVELO'] = {
        ['defaultclip'] = {
            component = 'w_ar_truvelo_mag1',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_truvelo_mag2',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['scope'] = {
            component = 'w_at_ar_truvelo_scope',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'w_at_ar_truvelo_supp',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'w_at_ar_truvelo_grip',
            item = 'rifle_grip',
        },
    },
    --

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
    ['WEAPON_M9'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_M9_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_M9_CLIP_02',
            item = 'pistol_extendedclip',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP_02',
            item = 'pistol_suppressor',
        },
    },
    ['WEAPON_M1911'] = {
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP_02',
            item = 'pistol_suppressor',
        },
    },
    ['WEAPON_DE'] = {
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP_02',
            item = 'pistol_suppressor',
        },
    },
    ['WEAPON_FNX45'] = {
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP_02',
            item = 'pistol_suppressor',
        },
    },
    ['WEAPON_MP9'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MP9_CLIP_01',
            item = 'microsmg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_MP9_CLIP_02',
            item = 'microsmg_extendedclip',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'pistol_suppressor',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MACRO',
            item = 'microsmg_scope',
        },
    },
    ['WEAPON_MAC10'] = {
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
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'pistol_suppressor',
        },
    },
    ['WEAPON_M70'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_M70_CLIP_01',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'rifle_suppressor',
        },
    },
    ['WEAPON_M110'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_M110_CLIP_01',
            item = 'marksmanrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_M110_CLIP_02',
            item = 'marksmanrifle_extendedclip',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
    },
    ['WEAPON_HK416'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_HK416_CLIP_01',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_HK416_CLIP_02',
            item = 'carbinerifle_extendedclip',
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
    },
}

local function getConfigWeaponAttachments(weapon)
    return WeaponAttachments[weapon]
end

exports('getConfigWeaponAttachments', getConfigWeaponAttachments)
