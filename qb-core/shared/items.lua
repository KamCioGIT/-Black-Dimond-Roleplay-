QBShared = QBShared or {}
QBShared.Items = {
	-- WEAPONS
	-- Melee
	['weapon_unarmed'] 				 = {['name'] = 'weapon_unarmed', 		 	  	['label'] = 'Fists', 					['weight'] = 1000, 		['type'] = 'weapon',	['ammotype'] = nil, 					['image'] = 'placeholder.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'Fisticuffs'},
	['weapon_dagger'] 				 = {['name'] = 'weapon_dagger', 			 	['label'] = 'Dagger', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_dagger.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A short knife with a pointed and edged blade, used as a weapon'},
	['weapon_bat'] 					 = {['name'] = 'weapon_bat', 			 	  	['label'] = 'Bat', 					    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_bat.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'Used for hitting a ball in sports (or other things)'},
	['weapon_bottle'] 				 = {['name'] = 'weapon_bottle', 			 	['label'] = 'Broken Bottle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_bottle.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A broken bottle'},
	['weapon_crowbar'] 				 = {['name'] = 'weapon_crowbar', 		 	  	['label'] = 'Crowbar', 				    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_crowbar.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'An iron bar with a flattened end, used as a lever'},
	['weapon_flashlight']			 = {['name'] = 'weapon_flashlight',				['label'] = 'Flashlight',				['weight'] = 1000,		['type'] = 'weapon',	['ammotype'] = nil,						['image'] = 'weapon_flashlight.png',	['unique'] = true,		['useable'] = false,	['description'] = 'A battery-operated portable light'},
	['weapon_golfclub'] 			 = {['name'] = 'weapon_golfclub', 		 	  	['label'] = 'Golfclub', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_golfclub.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A club used to hit the ball in golf'},
	['weapon_hammer'] 				 = {['name'] = 'weapon_hammer', 			 	['label'] = 'Hammer', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_hammer.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'Used for jobs such as breaking things (legs) and driving in nails'},
	['weapon_hatchet'] 				 = {['name'] = 'weapon_hatchet', 		 	  	['label'] = 'Hatchet', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_hatchet.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A small axe with a short handle for use in one hand'},
	['weapon_knuckle'] 				 = {['name'] = 'weapon_knuckle', 		 	  	['label'] = 'Knuckle', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_knuckle.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A metal guard worn over the knuckles in fighting, especially to increase the effect of the blows'},
	['weapon_knife'] 				 = {['name'] = 'weapon_knife', 			 	  	['label'] = 'Knife', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_knife.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'An instrument composed of a blade fixed into a handle, used for cutting or as a weapon'},
	['weapon_machete'] 				 = {['name'] = 'weapon_machete', 		 	  	['label'] = 'Machete', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_machete.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A broad, heavy knife used as a weapon'},
	['weapon_switchblade'] 			 = {['name'] = 'weapon_switchblade', 	 	  	['label'] = 'Switchblade', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_switchblade.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A knife with a blade that springs out from the handle when a button is pressed'},
	['weapon_nightstick'] 			 = {['name'] = 'weapon_nightstick', 		 	['label'] = 'Nightstick', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_nightstick.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A police officer\'s club or billy'},
	['weapon_wrench'] 				 = {['name'] = 'weapon_wrench', 			 	['label'] = 'Wrench', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_wrench.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A tool used for gripping and turning nuts, bolts, pipes, etc'},
	['weapon_battleaxe'] 			 = {['name'] = 'weapon_battleaxe', 		 	  	['label'] = 'Battle Axe', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_battleaxe.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A large broad-bladed axe used in ancient warfare'},
	['weapon_poolcue'] 				 = {['name'] = 'weapon_poolcue', 		 	  	['label'] = 'Poolcue', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_poolcue.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A stick used to strike a ball, usually the cue ball (or other things)'},
	['weapon_briefcase'] 			 = {['name'] = 'weapon_briefcase', 		 	  	['label'] = 'Briefcase', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_briefcase.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A briefcase for storing important documents'},
	['weapon_briefcase_02'] 		 = {['name'] = 'weapon_briefcase_02', 	 	  	['label'] = 'Suitcase', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_briefcase2.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'Wonderfull for nice vacation to Liberty City'},
	['weapon_garbagebag'] 			 = {['name'] = 'weapon_garbagebag', 		 	['label'] = 'Garbage Bag', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_garbagebag.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A garbage bag'},
	['weapon_handcuffs'] 			 = {['name'] = 'weapon_handcuffs', 		 	  	['label'] = 'Handcuffs', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_handcuffs.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A pair of lockable linked metal rings for securing a prisoner\'s wrists'},
	['weapon_bread'] 				 = {['name'] = 'weapon_bread', 				 	['label'] = 'Baquette', 		        ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'baquette.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'Bread...?'},
	['weapon_stone_hatchet'] 		 = {['name'] = 'weapon_stone_hatchet', 		 	['label'] = 'Stone Hatchet', 	        ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_stone_hatchet.png', ['unique'] = true, 		['useable'] = true, 	['description'] = 'Stone ax'},

	-- Handguns
	['weapon_pistol'] 				 = {['name'] = 'weapon_pistol', 			 	['label'] = 'Walther P99', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_pistol.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A small firearm designed to be held in one hand'},
	['weapon_pistol_mk2'] 			 = {['name'] = 'weapon_pistol_mk2', 			['label'] = 'Pistol Mk II', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_pistol_mk2.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'An upgraded small firearm designed to be held in one hand'},
	['weapon_combatpistol'] 		 = {['name'] = 'weapon_combatpistol', 	 	  	['label'] = 'Combat Pistol', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_combatpistol.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A combat version small firearm designed to be held in one hand'},
	['weapon_appistol'] 			 = {['name'] = 'weapon_appistol', 		 	  	['label'] = 'AP Pistol', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_appistol.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A small firearm designed to be held in one hand that is automatic'},
	['weapon_stungun'] 				 = {['name'] = 'weapon_stungun', 		 	  	['label'] = 'Taser', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_stungun.png', 		 ['unique'] = true, 	['useable'] = false, 	['description'] = 'A weapon firing barbs attached by wires to batteries, causing temporary paralysis'},
	['weapon_pistol50'] 			 = {['name'] = 'weapon_pistol50', 		 	  	['label'] = 'Pistol .50', 			    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_pistol50.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A .50 caliber firearm designed to be held with both hands'},
	['weapon_snspistol'] 			 = {['name'] = 'weapon_snspistol', 		 	  	['label'] = 'SNS Pistol', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_snspistol.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A very small firearm designed to be easily concealed'},
	['weapon_heavypistol'] 			 = {['name'] = 'weapon_heavypistol', 	 	  	['label'] = 'Heavy Pistol', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_heavypistol.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A hefty firearm designed to be held in one hand (or attempted)'},
	['weapon_vintagepistol'] 		 = {['name'] = 'weapon_vintagepistol', 	 	  	['label'] = 'Vintage Pistol', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_vintagepistol.png', ['unique'] = true, 		['useable'] = false, 	['description'] = 'An antique firearm designed to be held in one hand'},
	['weapon_flaregun'] 			 = {['name'] = 'weapon_flaregun', 		 	  	['label'] = 'Flare Gun', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_FLARE',			['image'] = 'weapon_flaregun.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A handgun for firing signal rockets'},
	['weapon_marksmanpistol'] 		 = {['name'] = 'weapon_marksmanpistol', 	 	['label'] = 'Marksman Pistol', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_marksmanpistol.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'A very accurate small firearm designed to be held in one hand'},
	['weapon_revolver'] 			 = {['name'] = 'weapon_revolver', 		 	  	['label'] = 'Revolver', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_revolver.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A pistol with revolving chambers enabling several shots to be fired without reloading'},
	['weapon_revolver_mk2'] 		 = {['name'] = 'weapon_revolver_mk2', 		 	['label'] = 'Violence', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_revolver_mk2.png', 	['unique'] = true, 		['useable'] = true, 	['description'] = 'da Violence'},
	['weapon_doubleaction'] 	     = {['name'] = 'weapon_doubleaction', 		 	['label'] = 'Double Action Revolver', 	['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_doubleaction.png', 	['unique'] = true, 		['useable'] = true, 	['description'] = 'Double Action Revolver'},
	['weapon_snspistol_mk2'] 	     = {['name'] = 'weapon_snspistol_mk2', 		 	['label'] = 'SNS Pistol Mk II', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_snspistol_mk2.png', ['unique'] = true, 		['useable'] = true, 	['description'] = 'SNS Pistol MK2'},
	['weapon_raypistol']			 = {['name'] = 'weapon_raypistol',				['label'] = 'Up-n-Atomizer',			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_raypistol.png',		['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Raypistol'},
	['weapon_ceramicpistol']		 = {['name'] = 'weapon_ceramicpistol', 		 	['label'] = 'Ceramic Pistol',		    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_ceramicpistol.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Ceramicpistol'},
	['weapon_navyrevolver']        	 = {['name'] = 'weapon_navyrevolver', 		 	['label'] = 'Navy Revolver',		    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_navyrevolver.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Navyrevolver'},
	['weapon_gadgetpistol'] 		 = {['name'] = 'weapon_gadgetpistol', 		 	['label'] = 'Perico Pistol',		    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_gadgetpistol.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Gadgetpistol'},
	['WT_PLASMAP'] 				 	= {['name'] = 'WT_PLASMAP', 		 	  		['label'] = 'Plasma', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_stungun.png', 		 ['unique'] = true, 	['useable'] = false, 	['description'] = 'A weapon firing barbs attached by wires to batteries, causing temporary paralysis'},
	
	-- Submachine Guns
	['weapon_microsmg'] 			 = {['name'] = 'weapon_microsmg', 		 	  	['label'] = 'Micro SMG', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_microsmg.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A handheld lightweight machine gun'},
	['weapon_smg'] 				 	 = {['name'] = 'weapon_smg', 			 	  	['label'] = 'SMG', 						['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_smg.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'A handheld lightweight machine gun'},
	['weapon_smg_mk2'] 				 = {['name'] = 'weapon_smg_mk2', 			 	['label'] = 'SMG Mk II', 				['weight'] = 1000,		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_smg_mk2.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'SMG MK2'},
	['weapon_assaultsmg'] 			 = {['name'] = 'weapon_assaultsmg', 		 	['label'] = 'Assault SMG', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_assaultsmg.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'An assault version of a handheld lightweight machine gun'},
	['weapon_combatpdw'] 			 = {['name'] = 'weapon_combatpdw', 		 	  	['label'] = 'Combat PDW', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_combatpdw.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A combat version of a handheld lightweight machine gun'},
	['weapon_machinepistol'] 		 = {['name'] = 'weapon_machinepistol', 	 	  	['label'] = 'Tec-9', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_machinepistol.png', ['unique'] = true, 		['useable'] = false, 	['description'] = 'A self-loading pistol capable of burst or fully automatic fire'},
	['weapon_minismg'] 				 = {['name'] = 'weapon_minismg', 		 	  	['label'] = 'Mini SMG', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_minismg.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A mini handheld lightweight machine gun'},
	['weapon_raycarbine']	         = {['name'] = 'weapon_raycarbine', 		 	['label'] = 'Unholy Hellbringer',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_raycarbine.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Raycarbine'},

	-- Shotguns
	['weapon_pumpshotgun'] 			 = {['name'] = 'weapon_pumpshotgun', 	 	  	['label'] = 'Pump Shotgun', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_pumpshotgun.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A pump-action smoothbore gun for firing small shot at short range'},
	['weapon_sawnoffshotgun'] 		 = {['name'] = 'weapon_sawnoffshotgun', 	 	['label'] = 'Sawn-off Shotgun', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_sawnoffshotgun.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'A sawn-off smoothbore gun for firing small shot at short range'},
	['weapon_assaultshotgun'] 		 = {['name'] = 'weapon_assaultshotgun', 	 	['label'] = 'Assault Shotgun', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_assaultshotgun.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'An assault version of asmoothbore gun for firing small shot at short range'},
	['weapon_bullpupshotgun'] 		 = {['name'] = 'weapon_bullpupshotgun', 	 	['label'] = 'Bullpup Shotgun', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_bullpupshotgun.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'A compact smoothbore gun for firing small shot at short range'},
	['weapon_musket'] 			     = {['name'] = 'weapon_musket', 			 	['label'] = 'Musket', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_musket.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'An infantryman\'s light gun with a long barrel, typically smooth-bored, muzzleloading, and fired from the shoulder'},
	['weapon_heavyshotgun'] 		 = {['name'] = 'weapon_heavyshotgun', 	 	  	['label'] = 'Heavy Shotgun', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_heavyshotgun.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A large smoothbore gun for firing small shot at short range'},
	['weapon_dbshotgun'] 			 = {['name'] = 'weapon_dbshotgun', 		 	  	['label'] = 'Double-barrel Shotgun', 	['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_dbshotgun.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A shotgun with two parallel barrels, allowing two single shots to be fired in quick succession'},
	['weapon_autoshotgun'] 			 = {['name'] = 'weapon_autoshotgun', 	 	  	['label'] = 'Auto Shotgun', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_autoshotgun.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A shotgun capable of rapid continous fire'},
	['weapon_pumpshotgun_mk2']		 = {['name'] = 'weapon_pumpshotgun_mk2',		['label'] = 'Pumpshotgun Mk II', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_pumpshotgun_mk2.png', ['unique'] = true, 	['useable'] = true, 	['description'] = 'Pumpshotgun MK2'},
	['weapon_combatshotgun']		 = {['name'] = 'weapon_combatshotgun', 		 	['label'] = 'Combat Shotgun',		    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_combatshotgun.png', ['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Combatshotgun'},

	-- Assault Rifles
	['weapon_assaultrifle'] 		 = {['name'] = 'weapon_assaultrifle', 	 	  	['label'] = 'Assault Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_assaultrifle.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A rapid-fire, magazine-fed automatic rifle designed for infantry use'},
	['weapon_assaultrifle_mk2'] 	 = {['name'] = 'weapon_assaultrifle_mk2', 	 	['label'] = 'Assault Rifle Mk II', 		['weight'] = 1000,		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_assaultrifle_mk2.png', ['unique'] = true, 	['useable'] = true, 	['description'] = 'Assault Rifle MK2'},
	['weapon_carbinerifle'] 		 = {['name'] = 'weapon_carbinerifle', 	 	  	['label'] = 'Carbine Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_carbinerifle.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A lightweight automatic rifle'},
	['weapon_carbinerifle_mk2'] 	 = {['name'] = 'weapon_carbinerifle_mk2', 	 	['label'] = 'Carbine Rifle Mk II', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_carbinerifle_mk2.png', ['unique'] = true, 	['useable'] = true, 	['description'] = 'Carbine Rifle MK2'},
	['weapon_advancedrifle'] 		 = {['name'] = 'weapon_advancedrifle', 	 	  	['label'] = 'Advanced Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_advancedrifle.png', ['unique'] = true, 		['useable'] = false, 	['description'] = 'An assault version of a rapid-fire, magazine-fed automatic rifle designed for infantry use'},
	['weapon_specialcarbine'] 		 = {['name'] = 'weapon_specialcarbine', 	 	['label'] = 'Special Carbine', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_specialcarbine.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'An extremely versatile assault rifle for any combat situation'},
	['weapon_bullpuprifle'] 		 = {['name'] = 'weapon_bullpuprifle', 	 	  	['label'] = 'Bullpup Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_bullpuprifle.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A compact automatic assault rifle'},
	['weapon_compactrifle'] 		 = {['name'] = 'weapon_compactrifle', 	 	  	['label'] = 'Compact Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_compactrifle.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A compact version of an assault rifle'},
	['weapon_specialcarbine_mk2']	 = {['name'] = 'weapon_specialcarbine_mk2', 	['label'] = 'Special Carbine Mk II',    ['weight'] = 1000, 	    ['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_specialcarbine_mk2.png', ['unique'] = true, ['useable'] = true, 	['description'] = 'Weapon Wpecialcarbine MK2'},
	['weapon_bullpuprifle_mk2']		 = {['name'] = 'weapon_bullpuprifle_mk2', 		['label'] = 'Bullpup Rifle Mk II',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_bullpuprifle_mk2.png', ['unique'] = true, 	['useable'] = true, 	['description'] = 'Bull Puprifle MK2'},
	['weapon_militaryrifle']		 = {['name'] = 'weapon_militaryrifle', 		 	['label'] = 'Military Rifle',		    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_militaryrifle.png', ['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Militaryrifle'},

	-- Light Machine Guns
	['weapon_mg'] 					 = {['name'] = 'weapon_mg', 				 	['label'] = 'Machinegun', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MG',				['image'] = 'weapon_mg.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'An automatic gun that fires bullets in rapid succession for as long as the trigger is pressed'},
	['weapon_combatmg'] 			 = {['name'] = 'weapon_combatmg', 		 	  	['label'] = 'Combat MG', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MG',				['image'] = 'weapon_combatmg.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A combat version of an automatic gun that fires bullets in rapid succession for as long as the trigger is pressed'},
	['weapon_gusenberg'] 			 = {['name'] = 'weapon_gusenberg', 		 	  	['label'] = 'Thompson SMG', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MG',				['image'] = 'weapon_gusenberg.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'An automatic rifle commonly referred to as a tommy gun'},
	['weapon_combatmg_mk2']	 		 = {['name'] = 'weapon_combatmg_mk2', 		 	['label'] = 'Combat MG Mk II',		    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MG',				['image'] = 'weapon_combatmg_mk2.png', 	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Combatmg MK2'},

	-- Sniper Rifles
	['weapon_sniperrifle'] 			 = {['name'] = 'weapon_sniperrifle', 	 	  	['label'] = 'Sniper Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'weapon_sniperrifle.png', 	 ['unique'] = true, 	['useable'] = false, 	['description'] = 'A high-precision, long-range rifle'},
	['weapon_heavysniper'] 			 = {['name'] = 'weapon_heavysniper', 	 	  	['label'] = 'Heavy Sniper', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'weapon_heavysniper.png', 	 ['unique'] = true, 	['useable'] = false, 	['description'] = 'An upgraded high-precision, long-range rifle'},
	['weapon_marksmanrifle'] 		 = {['name'] = 'weapon_marksmanrifle', 	 	  	['label'] = 'Marksman Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'weapon_marksmanrifle.png', ['unique'] = true, 		['useable'] = false, 	['description'] = 'A very accurate single-fire rifle'},
	['weapon_remotesniper'] 		 = {['name'] = 'weapon_remotesniper', 	 	  	['label'] = 'Remote Sniper', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER_REMOTE',	['image'] = 'weapon_remotesniper.png', 	 ['unique'] = true, 	['useable'] = false, 	['description'] = 'A portable high-precision, long-range rifle'},
	['weapon_heavysniper_mk2']		 = {['name'] = 'weapon_heavysniper_mk2', 		['label'] = 'Heavy Sniper Mk II',	    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'weapon_heavysniper_mk2.png', ['unique'] = true, 	['useable'] = true, 	['description'] = 'Weapon Heavysniper MK2'},
	['weapon_marksmanrifle_mk2']	 = {['name'] = 'weapon_marksmanrifle_mk2', 		['label'] = 'Marksman Rifle Mk II',	    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'weapon_marksmanrifle_mk2.png',	['unique'] = true, 	['useable'] = true, 	['description'] = 'Weapon Marksmanrifle MK2'},

	-- Heavy Weapons
	['weapon_rpg'] 					 = {['name'] = 'weapon_rpg', 			      	['label'] = 'RPG', 						['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RPG',				['image'] = 'weapon_rpg.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'A rocket-propelled grenade launcher'},
	['weapon_grenadelauncher'] 		 = {['name'] = 'weapon_grenadelauncher', 	  	['label'] = 'Grenade Launcher', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_GRENADELAUNCHER',	['image'] = 'weapon_grenadelauncher.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'A weapon that fires a specially-designed large-caliber projectile, often with an explosive, smoke or gas warhead'},
	['weapon_grenadelauncher_smoke'] = {['name'] = 'weapon_grenadelauncher_smoke', 	['label'] = 'Smoke Grenade Launcher', 	['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_GRENADELAUNCHER',	['image'] = 'weapon_smokegrenade.png', 	 ['unique'] = true, 	['useable'] = false, 	['description'] = 'A bomb that produces a lot of smoke when it explodes'},
	['weapon_minigun'] 				 = {['name'] = 'weapon_minigun', 		      	['label'] = 'Minigun', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MINIGUN',			['image'] = 'weapon_minigun.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A portable machine gun consisting of a rotating cluster of six barrels and capable of variable rates of fire of up to 6,000 rounds per minute'},
	['weapon_firework'] 			 = {['name'] = 'weapon_firework', 		 	  	['label'] = 'Firework Launcher', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_firework.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A device containing gunpowder and other combustible chemicals that causes a spectacular explosion when ignited'},
	['weapon_railgun'] 				 = {['name'] = 'weapon_railgun', 		 	  	['label'] = 'Railgun', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_railgun.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A weapon that uses electromagnetic force to launch high velocity projectiles'},
	['weapon_hominglauncher'] 		 = {['name'] = 'weapon_hominglauncher', 	 	['label'] = 'Homing Launcher', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_STINGER',			['image'] = 'weapon_hominglauncher.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'A weapon fitted with an electronic device that enables it to find and hit a target'},
	['weapon_compactlauncher'] 		 = {['name'] = 'weapon_compactlauncher',  	  	['label'] = 'Compact Launcher', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_compactlauncher.png', 	['unique'] = true, 	['useable'] = false, 	['description'] = 'A compact grenade launcher'},
	['weapon_rayminigun']			 = {['name'] = 'weapon_rayminigun', 		 	['label'] = 'Widowmaker',		        ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MINIGUN',			['image'] = 'weapon_rayminigun.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Rayminigun'},

	-- Throwables
	['weapon_grenade'] 				 = {['name'] = 'weapon_grenade', 		      	['label'] = 'Grenade', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_grenade.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A handheld throwable bomb'},
	['weapon_bzgas'] 				 = {['name'] = 'weapon_bzgas', 			      	['label'] = 'BZ Gas', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_bzgas.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A cannister of gas that causes extreme pain'},
	['weapon_molotov'] 				 = {['name'] = 'weapon_molotov', 		      	['label'] = 'Molotov', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_molotov.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A crude bomb made of a bottle filled with a flammable liquid and fitted with a wick for lighting'},
	['weapon_stickybomb'] 			 = {['name'] = 'weapon_stickybomb', 		    ['label'] = 'C4', 						['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_stickybomb.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'An explosive charge covered with an adhesive that when thrown against an object sticks until it explodes'},
	['weapon_proxmine'] 			 = {['name'] = 'weapon_proxmine', 		 	  	['label'] = 'Proxmine Grenade', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_proximitymine.png', ['unique'] = true, 		['useable'] = false, 	['description'] = 'A bomb placed on the ground that detonates when going within its proximity'},
	['weapon_snowball'] 		     = {['name'] = 'weapon_snowball', 		 	  	['label'] = 'Snowball', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_snowball.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A ball of packed snow, especially one made for throwing at other people for fun'},
	['weapon_pipebomb'] 			 = {['name'] = 'weapon_pipebomb', 		 	  	['label'] = 'Pipe Bomb', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_pipebomb.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A homemade bomb, the components of which are contained in a pipe'},
	['weapon_ball'] 				 = {['name'] = 'weapon_ball', 			 	  	['label'] = 'Ball', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_BALL',				['image'] = 'weapon_ball.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'A solid or hollow spherical or egg-shaped object that is kicked, thrown, or hit in a game'},
	['weapon_smokegrenade'] 		 = {['name'] = 'weapon_smokegrenade', 	      	['label'] = 'Smoke Grenade', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_c4.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'An explosive charge that can be remotely detonated'},
	['weapon_flare'] 				 = {['name'] = 'weapon_flare', 			 	  	['label'] = 'Flare pistol', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_FLARE',			['image'] = 'weapon_flare.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A small pyrotechnic devices used for illumination and signalling'},

	-- Miscellaneous
	['weapon_petrolcan'] 			 = {['name'] = 'weapon_petrolcan', 		 	  	['label'] = 'Petrol Can', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PETROLCAN',		['image'] = 'weapon_petrolcan.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A robust liquid container made from pressed steel'},
	['weapon_fireextinguisher'] 	 = {['name'] = 'weapon_fireextinguisher',      	['label'] = 'Fire Extinguisher', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_fireextinguisher.png', 	['unique'] = true, 	['useable'] = false, 	['description'] = 'A portable device that discharges a jet of water, foam, gas, or other material to extinguish a fire'},
	['weapon_hazardcan']			 = {['name'] = 'weapon_hazardcan',				['label'] = 'Hazardous Jerry Can',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PETROLCAN',		['image'] = 'weapon_hazardcan.png',		['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Hazardcan'},

	-- PISTOL ATTACHMENTS
	['pistol_defaultclip'] 			 = {['name'] = 'pistol_defaultclip', 			['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pistol Default Clip'},
	['pistol_extendedclip'] 		 = {['name'] = 'pistol_extendedclip', 			['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pistol Extended Clip'},
	['pistol_flashlight'] 			 = {['name'] = 'pistol_flashlight', 			['label'] = 'Pistol Flashlight', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_flashlight.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pistol Flashlight Attachment'},
	['pistol_suppressor'] 			 = {['name'] = 'pistol_suppressor', 			['label'] = 'Pistol Suppressor', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pistol Suppressor Attachment'},
	['pistol_luxuryfinish'] 	     = {['name'] = 'pistol_luxuryfinish', 			['label'] = 'Pistol Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pistol Luxury Finish'},
	['combatpistol_defaultclip'] 	 = {['name'] = 'combatpistol_defaultclip', 		['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Combat Pistol Default Clip'},
	['combatpistol_extendedclip']    = {['name'] = 'combatpistol_extendedclip', 	['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Combat Pistol Extended Clip'},
	['combatpistol_luxuryfinish'] 	 = {['name'] = 'combatpistol_luxuryfinish', 	['label'] = 'Pistol Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Combat Pistol Luxury Finish'},
	['appistol_defaultclip'] 		 = {['name'] = 'appistol_defaultclip', 			['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'APPistol Default Clip'},
	['appistol_extendedclip'] 		 = {['name'] = 'appistol_extendedclip', 		['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'APPistol Extended Clip'},
	['appistol_luxuryfinish'] 	     = {['name'] = 'appistol_luxuryfinish', 		['label'] = 'Pistol Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'APPistol Luxury Finish'},
	['pistol50_defaultclip'] 		 = {['name'] = 'pistol50_defaultclip', 			['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '.50 Pistol Default Clip'},
	['pistol50_extendedclip'] 		 = {['name'] = 'pistol50_extendedclip', 		['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '.50 Pistol Extended Clip'},
	['pistol50_luxuryfinish'] 	     = {['name'] = 'pistol50_luxuryfinish', 		['label'] = 'Pistol Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '.50 Pistol Luxury Finish'},
	['revolver_defaultclip'] 		 = {['name'] = 'revolver_defaultclip', 			['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Revovler Default Clip'},
	['revolver_vipvariant'] 		 = {['name'] = 'revolver_vipvariant', 		    ['label'] = 'Pistol Variant', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Revovler Variant'},
	['revolver_bodyguardvariant'] 	 = {['name'] = 'revolver_bodyguardvariant', 	['label'] = 'Pistol Variant', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Revovler Variant'},
	['snspistol_defaultclip'] 		 = {['name'] = 'snspistol_defaultclip', 		['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'SNS Pistol Default Clip'},
	['snspistol_extendedclip'] 		 = {['name'] = 'snspistol_extendedclip', 		['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'SNS Pistol Extended Clip'},
	['snspistol_grip'] 	             = {['name'] = 'snspistol_grip', 		        ['label'] = 'Pistol Grip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'SNS Pistol Grip Attachment'},
	['heavypistol_defaultclip'] 	 = {['name'] = 'heavypistol_defaultclip', 		['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Heavy Pistol Default Clip'},
	['heavypistol_extendedclip'] 	 = {['name'] = 'heavypistol_extendedclip', 		['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Heavy Pistol Extended Clip'},
	['heavypistol_grip'] 	         = {['name'] = 'heavypistol_grip', 		        ['label'] = 'Pistol Grip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Heavy Pistol Grip Attachment'},
	['vintagepistol_defaultclip'] 	 = {['name'] = 'vintagepistol_defaultclip', 	['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Vintage Pistol Default Clip'},
	['vintagepistol_extendedclip'] 	 = {['name'] = 'vintagepistol_extendedclip', 	['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Vintage Pistol Default Clip'},

	-- SMG ATTACHMENTS
	['microsmg_defaultclip'] 	     = {['name'] = 'microsmg_defaultclip', 			['label'] = 'SMG Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Micro SMG Default Clip'},
	['microsmg_extendedclip'] 		 = {['name'] = 'microsmg_extendedclip', 		['label'] = 'SMG EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Micro SMG Extended Clip'},
	['microsmg_scope'] 			     = {['name'] = 'microsmg_scope', 			    ['label'] = 'SMG Scope', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Micro SMG Scope Attachment'},
	['microsmg_luxuryfinish'] 	     = {['name'] = 'microsmg_luxuryfinish', 		['label'] = 'SMG Finish', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Micro SMG Luxury Finish'},
	['smg_defaultclip'] 	         = {['name'] = 'smg_defaultclip', 			    ['label'] = 'SMG Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'SMG Default Clip'},
	['smg_extendedclip'] 	         = {['name'] = 'smg_extendedclip', 		        ['label'] = 'SMG EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'SMG Extended Clip'},
	['smg_drum']                     = {['name'] = 'smg_drum', 	                    ['label'] = 'SMG Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'SMG Drum'},
	['smg_scope'] 	                 = {['name'] = 'smg_scope', 	                ['label'] = 'SMG Scope', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'SMG Scope Attachment'},
	['smg_luxuryfinish'] 		     = {['name'] = 'smg_luxuryfinish', 			    ['label'] = 'SMG Finish', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'SMG Luxury Finish'},
	['assaultsmg_defaultclip'] 		 = {['name'] = 'assaultsmg_defaultclip', 		['label'] = 'SMG Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Assault SMG Default Clip'},
	['assaultsmg_extendedclip'] 	 = {['name'] = 'assaultsmg_extendedclip', 		['label'] = 'SMG EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Assault SMG Extended Clip'},
	['assaultsmg_luxuryfinish']      = {['name'] = 'assaultsmg_luxuryfinish', 		['label'] = 'SMG Finish', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Assault SMG Luxury Finish'},
	['minismg_defaultclip'] 		 = {['name'] = 'minismg_defaultclip', 		    ['label'] = 'SMG Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Mini SMG Default Clip'},
	['minismg_extendedclip'] 	     = {['name'] = 'minismg_extendedclip', 		    ['label'] = 'SMG EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Mini SMG Extended Clip'},
	['machinepistol_defaultclip']    = {['name'] = 'machinepistol_defaultclip', 	['label'] = 'SMG Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Machine Pistol Default Clip'},
	['machinepistol_extendedclip']   = {['name'] = 'machinepistol_extendedclip', 	['label'] = 'SMG EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Machine Pistol Extended Clip'},
	['machinepistol_drum'] 	         = {['name'] = 'machinepistol_drum', 	        ['label'] = 'SMG Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Machine Pistol Drum'},
	['combatpdw_defaultclip'] 		 = {['name'] = 'combatpdw_defaultclip', 		['label'] = 'SMG Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Combat PDW Default Clip'},
	['combatpdw_extendedclip'] 		 = {['name'] = 'combatpdw_extendedclip', 		['label'] = 'SMG EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Combat PDW Extended Clip'},
	['combatpdw_drum'] 	             = {['name'] = 'combatpdw_drum', 		        ['label'] = 'SMG Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Combat PDW Drum'},
	['combatpdw_grip'] 	             = {['name'] = 'combatpdw_grip', 				['label'] = 'SMG Grip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Combat PDW Grip Attachment'},
	['combatpdw_scope'] 	         = {['name'] = 'combatpdw_scope', 				['label'] = 'SMG Scope', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Combat PDW Scope Attachment'},

	-- SHOTGUN ATTACHMENTS
	['shotgun_suppressor'] 	         = {['name'] = 'shotgun_suppressor', 			['label'] = 'Shotgun Suppressor', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Shotgun Suppressor Attachment'},
	['pumpshotgun_luxuryfinish'] 	 = {['name'] = 'pumpshotgun_luxuryfinish', 		['label'] = 'Shotgun Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pump Shotgun Luxury Finish'},
	['sawnoffshotgun_luxuryfinish']  = {['name'] = 'sawnoffshotgun_luxuryfinish', 	['label'] = 'Shotgun Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Sawn Off Shotgun Luxury Finish'},
	['assaultshotgun_defaultclip'] 	 = {['name'] = 'assaultshotgun_defaultclip', 	['label'] = 'Shotgun Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Assault Shotgun Default Clip'},
	['assaultshotgun_extendedclip']  = {['name'] = 'assaultshotgun_extendedclip', 	['label'] = 'Shotgun EXT Clip', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Assault Shotgun Extended Clip'},
	['heavyshotgun_defaultclip'] 	 = {['name'] = 'heavyshotgun_defaultclip', 		['label'] = 'Shotgun Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Heavy Shotgun Default Clip'},
	['heavyshotgun_extendedclip']    = {['name'] = 'heavyshotgun_extendedclip', 	['label'] = 'Shotgun EXT Clip', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Heavy Shotgun Extended Clip'},
	['heavyshotgun_drum'] 	         = {['name'] = 'heavyshotgun_drum', 	        ['label'] = 'Shotgun Drum', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Heavy Shotgun Drum'},

	-- RIFLE ATTACHMENTS
	['assaultrifle_defaultclip'] 	 = {['name'] = 'assaultrifle_defaultclip', 		['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Assault Rifle Default Clip'},
	['assaultrifle_extendedclip']    = {['name'] = 'assaultrifle_extendedclip', 	['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Assault Rifle Extended Clip'},
	['assaultrifle_drum'] 			 = {['name'] = 'assaultrifle_drum', 			['label'] = 'Rifle Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Assault Rifle Drum'},
	['rifle_flashlight'] 	         = {['name'] = 'rifle_flashlight', 		        ['label'] = 'Rifle Flashlight', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_flashlight.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Rifle Flashlight Attachment'},
	['rifle_grip'] 	                 = {['name'] = 'rifle_grip', 			        ['label'] = 'Rifle Grip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Rifle Grip Attachment'},
	['rifle_suppressor'] 	         = {['name'] = 'rifle_suppressor', 		        ['label'] = 'Rifle Suppressor', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Rifle Suppressor Attachment'},
	['assaultrifle_luxuryfinish'] 	 = {['name'] = 'assaultrifle_luxuryfinish',     ['label'] = 'Rifle Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Assault Rifle Luxury Finish'},
	['carbinerifle_defaultclip']     = {['name'] = 'carbinerifle_defaultclip', 	    ['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Carbine Rifle Default Clip'},
	['carbinerifle_extendedclip'] 	 = {['name'] = 'carbinerifle_extendedclip', 	['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Carbine Rifle Extended Clip'},
	['carbinerifle_drum'] 		     = {['name'] = 'carbinerifle_drum', 			['label'] = 'Rifle Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Carbine Rifle Drum'},
	['carbinerifle_scope'] 		     = {['name'] = 'carbinerifle_scope', 		    ['label'] = 'Rifle Scope', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Carbine Rifle Scope'},
	['carbinerifle_luxuryfinish'] 	 = {['name'] = 'carbinerifle_luxuryfinish', 	['label'] = 'Rifle Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Carbine Rifle Luxury Finish'},
	['advancedrifle_defaultclip']    = {['name'] = 'advancedrifle_defaultclip', 	['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Advanced Rifle Default Clip'},
	['advancedrifle_extendedclip'] 	 = {['name'] = 'advancedrifle_extendedclip',    ['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Advanced Rifle Extended Clip'},
	['advancedrifle_luxuryfinish'] 	 = {['name'] = 'advancedrifle_luxuryfinish', 	['label'] = 'Rifle Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Advanced Rifle Luxury Finish'},
	['specialcarbine_defaultclip']   = {['name'] = 'specialcarbine_defaultclip', 	['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Special Carbine Default Clip'},
	['specialcarbine_extendedclip']  = {['name'] = 'specialcarbine_extendedclip', 	['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Special Carbine Extended Clip'},
	['specialcarbine_drum'] 	     = {['name'] = 'specialcarbine_drum', 	        ['label'] = 'Rifle Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Special Carbine Drum'},
	['specialcarbine_luxuryfinish']  = {['name'] = 'specialcarbine_luxuryfinish', 	['label'] = 'Rifle Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Special Carbine Luxury Finish'},
	['bullpuprifle_defaultclip']     = {['name'] = 'bullpuprifle_defaultclip', 		['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Bullpup Rifle Default Clip'},
	['bullpuprifle_extendedclip'] 	 = {['name'] = 'bullpuprifle_extendedclip', 	['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Bullpup Rifle Extended Clip'},
	['bullpuprifle_luxuryfinish'] 	 = {['name'] = 'bullpuprifle_luxuryfinish', 	['label'] = 'Rifle Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Bullpup Rifle Luxury Finish'},
	['compactrifle_defaultclip'] 	 = {['name'] = 'compactrifle_defaultclip', 		['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Compact Rifle Default Clip'},
	['compactrifle_extendedclip'] 	 = {['name'] = 'compactrifle_extendedclip', 	['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Compact Rifle Extended Clip'},
	['compactrifle_drum'] 	         = {['name'] = 'compactrifle_drum', 		    ['label'] = 'Rifle Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Compact Rifle Drum'},
	['gusenberg_defaultclip'] 	     = {['name'] = 'gusenberg_defaultclip', 		['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Gusenberg Default Clip'},
	['gusenberg_extendedclip'] 	     = {['name'] = 'gusenberg_extendedclip', 		['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Gusenberg Extended Clip'},



	
["uwububbleteablueberry"] = {["name"] = "uwububbleteablueberry", ["label"] = "Berry Blue B-T", ["weight"] = 200, ["type"] = "item", ["image"] = "uwububbleteablueberry.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Lavender Tea with Blueberry Boba."},
["uwububbletearose"] = {["name"] = "uwububbletearose", ["label"] = "Rosey B-T", ["weight"] = 200, ["type"] = "item", ["image"] = "uwububbletearose.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Sakura Rose Tea with Vanilla Boba."},
["uwububbleteamint"] = {["name"] = "uwububbleteamint", ["label"] = "Minty B-T", ["weight"] = 200, ["type"] = "item", ["image"] = "uwububbleteamint.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Matcha Tea with Mint Boba."},
["uwupancake"] = {["name"] = "uwupancake", ["label"] = "uWu Savory Pancake", ["weight"] = 200, ["type"] = "item", ["image"] = "uwupancake.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Korean savory pancake made with scallions."},
["uwucupcake"] = {["name"] = "uwucupcake", ["label"] = "uWu Cupcake", ["weight"] = 200, ["type"] = "item", ["image"] = "uwudcupcake.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Sugar Kitty Cupcake!"},
["uwuvanillasandy"] = {["name"] = "uwuvanillasandy", ["label"] = "uWu Vanilla Marshmallows Sandy", ["weight"] = 200, ["type"] = "item", ["image"] = "uwuvanillasandy.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Sweet Vanilla Biscuit with kitty marshmallows!"},
["uwuchocsandy"] = {["name"] = "uwuchocsandy", ["label"] = "uWu Chocolate Marshmallows Sandy", ["weight"] = 200, ["type"] = "item", ["image"] = "uwuchocsandy.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Sweet Chocolate Biscuit with kitty marshmallows!"},

["uwupancakebatter"] = {["name"] = "uwupancakebatter", ["label"] = "uWu Savory Pancake batter", ["weight"] = 200, ["type"] = "item", ["image"] = "uwubatter.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Korean savory pancake made with scallions Batter."},
["uwucupcakebatter"] = {["name"] = "uwucupcakebatter", ["label"] = "uWu Cupcake batter", ["weight"] = 200, ["type"] = "item", ["image"] = "uwubatter.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Sugar Kitty Cupcake Batter!"},
["uwuvanillasandybatter"] = {["name"] = "uwuvanillasandybatter", ["label"] = "uWu Vanilla Marshmallows Sandy batter", ["weight"] = 200, ["type"] = "item", ["image"] = "uwubatter.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Sweet Vanilla Biscuit with kitty marshmallows batter!"},
["uwuchocsandybatter"] = {["name"] = "uwuchocsandybatter", ["label"] = "uWu Chocolate Marshmallows Sandy batter", ["weight"] = 200, ["type"] = "item", ["image"] = "uwubatter.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Sweet Chocolate Biscuit with kitty marshmallows batter!"},
["uwubudhabowl"] = {["name"] = "uwubudhabowl", ["label"] = "uWu Budha Bowl", ["weight"] = 200, ["type"] = "item", ["image"] = "uwubudhabowl.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Bowl of nourishment and balance."},
["uwusushi"] = {["name"] = "uwusushi", ["label"] = "uWu Shushi", ["weight"] = 200, ["type"] = "item", ["image"] = "uwushushi.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Designed as a window to your soul."},
["uwumisosoup"] = {["name"] = "uwumisosoup", ["label"] = "uWu Miso Soup", ["weight"] = 200, ["type"] = "item", ["image"] = "uwumisosoup.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Fungus never tasted so good!"},
['flour'] = {["name"] = "flour", ["label"] = "Flour", ["weight"] = 200, ["type"] = "item", ["image"] = "flour.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "flour for baking"},
['nutmeg'] = {["name"] = "nutmeg", ["label"] = "Nutmeg", ["weight"] = 200, ["type"] = "item", ["image"] = "nutmeg.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "nutmeg"},
['butter'] = {["name"] = "butter", ["label"] = "butter", ["weight"] = 200, ["type"] = "item", ["image"] = "butter.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "i cant belive its not butter"},
['sugar'] = {["name"] = "sugar", ["label"] = "Sugar", ["weight"] = 200, ["type"] = "item", ["image"] = "sugar.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "sugar"},
['egg'] = {["name"] = "egg", ["label"] = "eggs", ["weight"] = 200, ["type"] = "item", ["image"] = "egg.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "fresh eggs"},
['vanillaextract'] = {["name"] = "vanillaextract", ["label"] = "Vanilla Extract", ["weight"] = 200, ["type"] = "item", ["image"] = "vanillaextract.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "vanilla extract"},
['bakingpowder'] = {["name"] = "bakingpowder", ["label"] = "baking powder", ["weight"] = 200, ["type"] = "item", ["image"] = "bakingpowder.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "baking powder"},
['cocoapowder'] = {["name"] = "cocoapowder", ["label"] = "cocoapowder", ["weight"] = 200, ["type"] = "item", ["image"] = "cocoapowder.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "cocoa powder"},
['milk'] = {["name"] = "milk", ["label"] = "milk", ["weight"] = 200, ["type"] = "item", ["image"] = "milk.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "milk"},
['matchapowder'] = {["name"] = "matchapowder", ["label"] = "matchapowder", ["weight"] = 200, ["type"] = "item", ["image"] = "matchapowder.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "matchapowder"},
['kittymarshmallows'] = {["name"] = "kittymarshmallows", ["label"] = "Uwu Kitty Marshmallows", ["weight"] = 200, ["type"] = "item", ["image"] = "kittymarshmallows.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Uwu Kitty Marshmallows"},
['dashigranules'] = {["name"] = "dashigranules", ["label"] = "dashigranules", ["weight"] = 200, ["type"] = "item", ["image"] = "dashigranules.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "dashi granules"},
['misopaste'] = {["name"] = "misopaste", ["label"] = "misopaste", ["weight"] = 200, ["type"] = "item", ["image"] = "misopaste.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "miso paste"},
['dicedsilkentofu'] = {["name"] = "dicedsilkentofu", ["label"] = "diced silken tofu", ["weight"] = 200, ["type"] = "item", ["image"] = "dicedsilkentofu.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "diced silken tofu"},
['onions'] = {["name"] = "onions", ["label"] = "onions", ["weight"] = 200, ["type"] = "item", ["image"] = "onions.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "onions"},
['whipcream'] = {["name"] = "whipcream", ["label"] = "whip cream", ["weight"] = 200, ["type"] = "item", ["image"] = "whipcream.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "whip cream"},
['blueberrylavendertea'] = {["name"] = "blueberrylavendertea", ["label"] = "blueberrylavendertea", ["weight"] = 200, ["type"] = "item", ["image"] = "blueberrylavendertea.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "blueberry lavender tea"},
['heavycream'] = {["name"] = "heavycream", ["label"] = "heavy cream", ["weight"] = 200, ["type"] = "item", ["image"] = "heavycream.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "heavy cream"},
['tapiocapearls'] = {["name"] = "tapiocapearls", ["label"] = "tapioca pearls", ["weight"] = 200, ["type"] = "item", ["image"] = "tapiocapearls.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "tapiocapearls"},
['sakurarosetea'] = {["name"] = "sakurarosetea", ["label"] = "sakurarosetea", ["weight"] = 200, ["type"] = "item", ["image"] = "sakurarosetea.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "sakura rose tea"},
['scallions'] = {["name"] = "scallions", ["label"] = "scallions", ["weight"] = 200, ["type"] = "item", ["image"] = "scallions.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "scallions"},
['salt'] = {["name"] = "salt", ["label"] = "salt", ["weight"] = 200, ["type"] = "item", ["image"] = "salt.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "salt"},
['soysauce'] = {["name"] = "soysauce", ["label"] = "soysauce", ["weight"] = 200, ["type"] = "item", ["image"] = "soysauce.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "soysauce"},
['whiterice'] = {["name"] = "whiterice", ["label"] = "whiterice", ["weight"] = 200, ["type"] = "item", ["image"] = "whiterice.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "White Rice"},
['vinegar'] = {["name"] = "vinegar", ["label"] = "vinegar", ["weight"] = 200, ["type"] = "item", ["image"] = "vinegar.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "vinegar"},
['seaweed'] = {["name"] = "seaweed", ["label"] = "seaweed", ["weight"] = 200, ["type"] = "item", ["image"] = "seaweed.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "seaweed wrap"},
['crabmeat'] = {["name"] = "crabmeat", ["label"] = "crabmeat", ["weight"] = 200, ["type"] = "item", ["image"] = "crabmeat.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "fresh crab meat"},
['broccoil'] = {["name"] = "broccoil", ["label"] = "broccoil", ["weight"] = 200, ["type"] = "item", ["image"] = "broccoil.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "fresh broccoil"},
['cauliflower'] = {["name"] = "cauliflower", ["label"] = "cauliflower", ["weight"] = 200, ["type"] = "item", ["image"] = "cauliflower.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "fresh cauliflower"},
['chickpeas'] = {["name"] = "chickpeas", ["label"] = "chickpeas", ["weight"] = 200, ["type"] = "item", ["image"] = "chickpeas.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "fresh chickpeas"},
['cashews'] = {["name"] = "cashews", ["label"] = "cashews", ["weight"] = 200, ["type"] = "item", ["image"] = "cashews.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "cashews"},
['lemonjuice'] = {["name"] = "lemonjuice", ["label"] = "lemonjuice", ["weight"] = 200, ["type"] = "item", ["image"] = "lemonjuice.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "lemon juice"},
['garlic'] = {["name"] = "garlic", ["label"] = "garlic", ["weight"] = 200, ["type"] = "item", ["image"] = "garlic.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "garlic"},
['uwupurpleplush'] = {["name"] = "uwupurpleplush", ["label"] = "uWu Purple Plush", ["weight"] = 200, ["type"] = "item", ["image"] = "uwupurpleplush.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Its just a uWu Plush Toy"},
['uwugreenplush'] = {["name"] = "uwugreenplush", ["label"] = "uWu Green Plush", ["weight"] = 200, ["type"] = "item", ["image"] = "uwugreenplush.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Its just a uWu Plush Toy"},
['uwublueplush'] = {["name"] = "uwublueplush", ["label"] = "uWu Blue Plush", ["weight"] = 200, ["type"] = "item", ["image"] = "uwublueplush.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Its just a uWu Plush Toy"},
['uwubrownplush'] = {["name"] = "uwubrownplush", ["label"] = "uWu Brown Plush", ["weight"] = 200, ["type"] = "item", ["image"] = "uwubrownplush.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Its just a uWu Plush Toy"},
['uwuyellowplush'] = {["name"] = "uwuyellowplush", ["label"] = "uWu Yellow Plush", ["weight"] = 200, ["type"] = "item", ["image"] = "uwuyellowplush.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Its just a uWu Plush Toy"},
['uwuredplush'] = {["name"] = "uwuredplush", ["label"] = "uWu Red Plush", ["weight"] = 200, ["type"] = "item", ["image"] = "uwuredplush.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Its just a uWu Plush Toy"},
['uwugreenrareplush'] = {["name"] = "uwugreenrareplush", ["label"] = "uWu Rare Green Plush", ["weight"] = 200, ["type"] = "item", ["image"] = "uwugreenrareplush.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Its just a uWu Plush Toy"},
['uwupinkrareplush'] = {["name"] = "uwupinkrareplush", ["label"] = "uWu Rare Pink Plush", ["weight"] = 200, ["type"] = "item", ["image"] = "uwupinkrareplush.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Its just a uWu Plush Toy"},


	-- SNIPER ATTACHMENTS
	['sniperrifle_defaultclip'] 	 = {['name'] = 'sniperrifle_defaultclip', 		['label'] = 'Sniper Suppressor', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Sniper Rifle Default Clip'},
	['sniper_scope'] 	             = {['name'] = 'sniper_scope', 		            ['label'] = 'Sniper Scope', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Sniper Rifle Scope Attachment'},
	['snipermax_scope']              = {['name'] = 'snipermax_scope', 	            ['label'] = 'Sniper Max Scope', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Sniper Rifle Max Scope Attachment'},
	['sniper_grip'] 	             = {['name'] = 'sniper_grip', 	                ['label'] = 'Sniper Grip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Sniper Rifle Grip Attachment'},
	['heavysniper_defaultclip']      = {['name'] = 'heavysniper_defaultclip', 	    ['label'] = 'Sniper Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Heavy Sniper Default Clip'},
	['marksmanrifle_defaultclip'] 	 = {['name'] = 'marksmanrifle_defaultclip', 	['label'] = 'Sniper Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Marksman Rifle Default Clip'},
	['marksmanrifle_extendedclip']   = {['name'] = 'marksmanrifle_extendedclip', 	['label'] = 'Sniper EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Marksman Rifle Extended Clip'},
	['marksmanrifle_scope'] 	     = {['name'] = 'marksmanrifle_scope', 	        ['label'] = 'Sniper Scope', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Marksman Rifle Scope Attachment'},
	['marksmanrifle_luxuryfinish'] 	 = {['name'] = 'marksmanrifle_luxuryfinish', 	['label'] = 'Sniper Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Marksman Rifle Luxury Finish'},

	-- Weapon Tints
	['weapontint_black']             = {['name'] = 'weapontint_black', 	            ['label'] = 'Default Tint', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_black.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Default/Black Weapon Tint'},
	['weapontint_green'] 	         = {['name'] = 'weapontint_green', 	            ['label'] = 'Green Tint', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_green.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Green Weapon Tint'},
	['weapontint_gold']      		 = {['name'] = 'weapontint_gold', 	    		['label'] = 'Gold Tint', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_gold.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Gold Weapon Tint'},
	['weapontint_pink'] 	 		 = {['name'] = 'weapontint_pink', 				['label'] = 'Pink Tint', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_pink.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pink Weapon Tint'},
	['weapontint_army']   			 = {['name'] = 'weapontint_army', 				['label'] = 'Army Tint', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_army.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Army Weapon Tint'},
	['weapontint_lspd'] 	     	 = {['name'] = 'weapontint_lspd', 	        	['label'] = 'LSPD Tint', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_lspd.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'LSPD Weapon Tint'},
	['weapontint_orange'] 	 		 = {['name'] = 'weapontint_orange', 			['label'] = 'Orange Tint', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_orange.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Orange Weapon Tint'},
	['weapontint_plat'] 	 		 = {['name'] = 'weapontint_plat', 				['label'] = 'Platinum Tint', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_plat.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Platinum Weapon Tint'},

	-- ITEMS

	-- Ammo ITEMS
	['pistol_ammo'] 				 = {['name'] = 'pistol_ammo', 			  	  	['label'] = 'Pistol ammo', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'pistol_ammo.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Ammo for Pistols'},
	['rifle_ammo'] 				 	 = {['name'] = 'rifle_ammo', 			  	  	['label'] = 'Rifle ammo', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_ammo.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Ammo for Rifles'},
	['smg_ammo'] 				 	 = {['name'] = 'smg_ammo', 			  	  		['label'] = 'SMG ammo', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'smg_ammo.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Ammo for Sub Machine Guns'},
	['shotgun_ammo'] 				 = {['name'] = 'shotgun_ammo', 			  	  	['label'] = 'Shotgun ammo', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'shotgun_ammo.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Ammo for Shotguns'},
	['mg_ammo'] 				 	 = {['name'] = 'mg_ammo', 			  	  		['label'] = 'MG ammo', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'mg_ammo.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Ammo for Machine Guns'},
	['snp_ammo'] 				 	 = {['name'] = 'snp_ammo', 			  	  		['label'] = 'Sniper ammo', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_ammo.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Ammo for Sniper Rifles'},
	['emp_ammo']			         = {['name'] = 'emp_ammo', 			  	        ['label'] = 'EMP Ammo', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'emp_ammo.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Ammo for EMP Launcher'},

	-- Card ITEMS
	['id_card'] 					 = {['name'] = 'id_card', 			 	  	  	['label'] = 'ID Card', 					['weight'] = 0, 		['type'] = 'item', 		['image'] = 'id_card.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A card containing all your information to identify yourself'},
	['driver_license'] 				 = {['name'] = 'driver_license', 			  	['label'] = 'Drivers License', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'driver_license.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Permit to show you can drive a vehicle'},
	['lawyerpass'] 					 = {['name'] = 'lawyerpass', 			 	  	['label'] = 'Lawyer Pass', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'lawyerpass.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Pass exclusive to lawyers to show they can represent a suspect'},
	['weaponlicense'] 				 = {['name'] = 'weaponlicense',				    ['label'] = 'Weapon License',			['weight'] = 0,			['type'] = 'item',		['image'] = 'weapon_license.png',		['unique'] = true,		['useable'] = true,		['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Weapon License'},
	['visa'] 					 	 = {['name'] = 'visa', 			 	  	  		['label'] = 'Visa Card', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'visacard.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Visa can be used via ATM'},
	['mastercard'] 					 = {['name'] = 'mastercard', 					['label'] = 'Master Card', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'mastercard.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'MasterCard can be used via ATM'},
	['security_card_01'] 			 = {['name'] = 'security_card_01', 			  	['label'] = 'Security Card A', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'security_card_01.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A security card... I wonder what it goes to'},
	['security_card_02'] 			 = {['name'] = 'security_card_02', 			  	['label'] = 'Security Card B', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'security_card_02.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A security card... I wonder what it goes to'},

	-- Eat ITEMS
	['tosti'] 						 = {['name'] = 'tosti', 			 	  	  	['label'] = 'Grilled Cheese Sandwich', 	['weight'] = 200, 		['type'] = 'item', 		['image'] = 'tosti.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Nice to eat'},
	['twerks_candy'] 				 = {['name'] = 'twerks_candy', 			  	  	['label'] = 'Twerks', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'twerks_candy.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Some delicious candy :O'},
	['snikkel_candy'] 				 = {['name'] = 'snikkel_candy', 			  	['label'] = 'Snikkel', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'snikkel_candy.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Some delicious candy :O'},
	['sandwich'] 				 	 = {['name'] = 'sandwich', 			  	  		['label'] = 'Sandwich', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'sandwich.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Nice bread for your stomach'},

	-- Drink ITEMS
	['water_bottle'] 				 = {['name'] = 'water_bottle', 			  	  	['label'] = 'Bottle of Water', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'water_bottle.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['coffee'] 				 		 = {['name'] = 'coffee', 			  	  		['label'] = 'Coffee', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'coffee.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pump 4 Caffeine'},
	['kurkakola'] 				 	 = {['name'] = 'kurkakola', 			  	  	['label'] = 'Cola', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'cola.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},

	-- Alcohol
	['beer'] 				 		 = {['name'] = 'beer', 			  	  			['label'] = 'Beer', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'beer.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Nothing like a good cold beer!'},
	['whiskey'] 				 	 = {['name'] = 'whiskey', 			  	  		['label'] = 'Whiskey', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'whiskey.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['vodka'] 				 		 = {['name'] = 'vodka', 			  	  		['label'] = 'Vodka', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'vodka.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['grape'] 					 	 = {['name'] = 'grape', 						['label'] = 'Grape', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'grape.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Mmmmh yummie, grapes'},
	['wine'] 					 	 = {['name'] = 'wine', 							['label'] = 'Wine', 					['weight'] = 300, 		['type'] = 'item', 		['image'] = 'wine.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Some good wine to drink on a fine evening'},
	['grapejuice'] 					 = {['name'] = 'grapejuice', 					['label'] = 'Grape Juice', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'grapejuice.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Grape juice is said to be healthy'},

	-- Drugs
	['joint'] 						 = {['name'] = 'joint', 			  	  		['label'] = 'Joint', 					['weight'] = 0, 		['type'] = 'item', 		['image'] = 'joint.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Sidney would be very proud at you'},
	['cokebaggy'] 					 = {['name'] = 'cokebaggy', 			  	  	['label'] = 'Bag of Coke', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'cocaine_baggy.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'To get happy real quick'},
	['crack_baggy'] 				 = {['name'] = 'crack_baggy', 			  	  	['label'] = 'Bag of Crack', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'crack_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'To get happy faster'},
	['xtcbaggy'] 					 = {['name'] = 'xtcbaggy', 			  	  		['label'] = 'Bag of XTC', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'xtc_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Pop those pills baby'},
	['weed_brick'] 		 			 = {['name'] = 'weed_brick', 					['label'] = 'Weed Brick', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weed_brick.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '1KG Weed Brick to sell to large customers.'},
	['coke_brick'] 		 			 = {['name'] = 'coke_brick', 					['label'] = 'Coke Brick', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'coke_brick.png', 			['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Heavy package of cocaine, mostly used for deals and takes a lot of space'},
	['coke_small_brick'] 		 	 = {['name'] = 'coke_small_brick', 				['label'] = 'Coke Package', 			['weight'] = 350, 		['type'] = 'item', 		['image'] = 'coke_small_brick.png', 	['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Small package of cocaine, mostly used for deals and takes a lot of space'},
	['oxy'] 				 		 = {['name'] = 'oxy',				    		['label'] = 'Prescription Oxy',			['weight'] = 0,			['type'] = 'item',		['image'] = 'oxy.png',					['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'The Label Has Been Ripped Off'},
	['meth'] 					 	 = {['name'] = 'meth', 							['label'] = 'Meth', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'meth_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A baggie of Meth'},
	['rolling_paper'] 			 	 = {['name'] = 'rolling_paper', 			  	['label'] = 'Rolling Paper', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'rolling_paper.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = {accept = {'weed_white-widow', 'weed_skunk', 'weed_purple-haze', 'weed_og-kush', 'weed_amnesia', 'weed_ak47'}, reward = 'joint', anim = {['dict'] = 'anim@amb@business@weed@weed_inspecting_high_dry@', ['lib'] = 'weed_inspecting_high_base_inspector', ['text'] = 'Rolling joint', ['timeOut'] = 5000,}},   ['description'] = 'Paper made specifically for encasing and smoking tobacco or cannabis.'},

	--Money Wash Lab
	["mc_key"]						= {["name"] = "mc_key", 							["label"] = "MC Key", 			["weight"] = 500, 		["type"] = "item", 		["image"] = "labkey.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Key for Mc"},
	
	-- Seed And Weed
	['weed_white-widow'] 			 = {['name'] = 'weed_white-widow', 			 	['label'] = 'White Widow 2g', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'weed_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A weed bag with 2g White Widow'},
	['weed_skunk'] 				  	 = {['name'] = 'weed_skunk', 			 		['label'] = 'Skunk 2g', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'weed_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A weed bag with 2g Skunk'},
	['weed_purple-haze'] 			 = {['name'] = 'weed_purple-haze', 			 	['label'] = 'Purple Haze 2g', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'weed_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A weed bag with 2g Purple Haze'},
	['weed_og-kush'] 				 = {['name'] = 'weed_og-kush', 			 		['label'] = 'OGKush 2g', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'weed_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A weed bag with 2g OG Kush'},
	['weed_amnesia'] 				 = {['name'] = 'weed_amnesia', 			 		['label'] = 'Amnesia 2g', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'weed_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A weed bag with 2g Amnesia'},
	['weed_ak47'] 				     = {['name'] = 'weed_ak47', 			 		['label'] = 'AK47 2g', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'weed_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A weed bag with 2g AK47'},
	['weed_white-widow_seed'] 		 = {['name'] = 'weed_white-widow_seed', 		['label'] = 'White Widow Seed', 		['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed_seed.png', 		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A weed seed of White Widow'},
	['weed_skunk_seed'] 			 = {['name'] = 'weed_skunk_seed', 			    ['label'] = 'Skunk Seed', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed_seed.png', 		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A weed seed of Skunk'},
	['weed_purple-haze_seed'] 		 = {['name'] = 'weed_purple-haze_seed', 		['label'] = 'Purple Haze Seed', 		['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed_seed.png', 		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A weed seed of Purple Haze'},
	['weed_og-kush_seed'] 			 = {['name'] = 'weed_og-kush_seed', 			['label'] = 'OGKush Seed', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed_seed.png', 		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A weed seed of OG Kush'},
	['weed_amnesia_seed'] 			 = {['name'] = 'weed_amnesia_seed', 			['label'] = 'Amnesia Seed', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed_seed.png', 		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A weed seed of Amnesia'},
	['weed_ak47_seed'] 				 = {['name'] = 'weed_ak47_seed', 			    ['label'] = 'AK47 Seed', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed_seed.png', 		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A weed seed of AK47'},
	['empty_weed_bag'] 				 = {['name'] = 'empty_weed_bag', 			    ['label'] = 'Empty Weed Bag', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed_baggy_empty.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A small empty bag'},
	['weed_nutrition'] 				 = {['name'] = 'weed_nutrition', 			    ['label'] = 'Plant Fertilizer', 		['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'weed_nutrition.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Plant nutrition'},

	-- Material
	['plastic'] 					 = {['name'] = 'plastic', 			  	  	  	['label'] = 'Plastic', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'plastic.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'RECYCLE! - Greta Thunberg 2019'},
	['metalscrap'] 					 = {['name'] = 'metalscrap', 			  	  	['label'] = 'Metal Scrap', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'metalscrap.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'You can probably make something nice out of this'},
	['copper'] 					 	 = {['name'] = 'copper', 			  	  		['label'] = 'Copper', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'copper.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Nice piece of metal that you can probably use for something'},
	['aluminum'] 					 = {['name'] = 'aluminum', 			  	  		['label'] = 'Aluminium', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'aluminum.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Nice piece of metal that you can probably use for something'},
	['aluminumoxide'] 				 = {['name'] = 'aluminumoxide', 			  	['label'] = 'Aluminium Powder', 		['weight'] = 100, 		['type'] = 'item', 		['image'] = 'aluminumoxide.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Some powder to mix with'},
	['iron'] 				 	     = {['name'] = 'iron', 			  				['label'] = 'Iron', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'iron.png', 			    ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Handy piece of metal that you can probably use for something'},
	['ironoxide'] 				 	 = {['name'] = 'ironoxide', 			  		['label'] = 'Iron Powder', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ironoxide.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = {accept = {'aluminumoxide'}, reward = 'thermite', anim = {['dict'] = 'anim@amb@business@weed@weed_inspecting_high_dry@', ['lib'] = 'weed_inspecting_high_base_inspector', ['text'] = 'Mixing powder..', ['timeOut'] = 10000}},   ['description'] = 'Some powder to mix with.'},
	['steel'] 				 	 	 = {['name'] = 'steel', 			  			['label'] = 'Steel', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'steel.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Nice piece of metal that you can probably use for something'},
	['rubber'] 				 	 	 = {['name'] = 'rubber', 			  			['label'] = 'Rubber', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'rubber.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Rubber, I believe you can make your own rubber ducky with it :D'},
	['glass'] 				 	 	 = {['name'] = 'glass', 			  			['label'] = 'Glass', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'glass.png', 			    ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'It is very fragile, watch out'},

	-- Tools
	['lockpick'] 					 = {['name'] = 'lockpick', 			 	  	  	['label'] = 'Lockpick', 				['weight'] = 300, 		['type'] = 'item', 		['image'] = 'lockpick.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = {accept = {'screwdriverset'}, reward = 'advancedlockpick', anim = {['dict'] = 'anim@amb@business@weed@weed_inspecting_high_dry@', ['lib'] = 'weed_inspecting_high_base_inspector', ['text'] = 'Crafting lockpick', ['timeOut'] = 7500,}},   ['description'] = 'Very useful if you lose your keys a lot.. or if you want to use it for something else...'},
	['advancedlockpick'] 			 = {['name'] = 'advancedlockpick', 			 	['label'] = 'Advanced Lockpick', 		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'advancedlockpick.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'If you lose your keys a lot this is very useful... Also useful to open your beers'},
	['electronickit'] 				 = {['name'] = 'electronickit', 			  	['label'] = 'Electronic Kit', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'electronickit.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = {accept = {'gatecrack'}, reward = 'trojan_usb', anim = nil}, ['description'] = 'If you\'ve always wanted to build a robot you can maybe start here. Maybe you\'ll be the new Elon Musk?'},
	['gatecrack'] 				 	 = {['name'] = 'gatecrack', 			  	  	['label'] = 'Gatecrack', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'usb_device.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Handy software to tear down some fences'},
	['thermite'] 			 	 	 = {['name'] = 'thermite', 			  			['label'] = 'Thermite', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'thermite.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Sometimes you\'d wish for everything to burn'},
	['trojan_usb'] 				 	 = {['name'] = 'trojan_usb', 			  	  	['label'] = 'Trojan USB', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'usb_device.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Handy software to shut down some systems'},
	['screwdriverset'] 				 = {['name'] = 'screwdriverset', 			    ['label'] = 'Toolkit', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'screwdriverset.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Very useful to screw... screws...'},
	['drill'] 				 		 = {['name'] = 'drill', 			    		['label'] = 'Drill', 					['weight'] = 20000, 	['type'] = 'item', 		['image'] = 'drill.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'The real deal...'},

	-- Vehicle Tools
	['nitrous'] 				 	 = {['name'] = 'nitrous', 			  	  		['label'] = 'Nitrous', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'nitrous.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Speed up, gas pedal! :D'},
	['repairkit'] 					 = {['name'] = 'repairkit', 			 	  	['label'] = 'Repairkit', 				['weight'] = 2500, 		['type'] = 'item', 		['image'] = 'repairkit.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A nice toolbox with stuff to repair your vehicle'},
	['advancedrepairkit'] 			 = {['name'] = 'advancedrepairkit', 			['label'] = 'Advanced Repairkit', 		['weight'] = 4000, 		['type'] = 'item', 		['image'] = 'advancedkit.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A nice toolbox with stuff to repair your vehicle'},
	['cleaningkit'] 				 = {['name'] = 'cleaningkit', 			 	  	['label'] = 'Cleaning Kit', 			['weight'] = 250, 		['type'] = 'item', 		['image'] = 'cleaningkit.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A microfiber cloth with some soap will let your car sparkle again!'},
	['tunerlaptop'] 				 = {['name'] = 'tunerlaptop', 			    	['label'] = 'Tunerchip', 				['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'tunerchip.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'With this tunerchip you can get your car on steroids... If you know what you\'re doing'},
	['harness'] 				 	 = {['name'] = 'harness', 			  	  		['label'] = 'Race Harness', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'harness.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Racing Harness so no matter what you stay in the car'},
    ['jerry_can'] 			 		 = {['name'] = 'jerry_can', 					['label'] = 'Jerrycan 20L', 			['weight'] = 20000, 	['type'] = 'item', 		['image'] = 'jerry_can.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A can full of Fuel'},

	-- Medication
	['firstaid'] 			 		 = {['name'] = 'firstaid', 						['label'] = 'First Aid', 				['weight'] = 2500, 		['type'] = 'item', 		['image'] = 'firstaid.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'You can use this First Aid kit to get people back on their feet'},
	['bandage'] 			 		 = {['name'] = 'bandage', 						['label'] = 'Bandage', 					['weight'] = 0, 		['type'] = 'item', 		['image'] = 'bandage.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A bandage works every time'},
    ['ifaks']                        = {['name'] = 'ifaks',                         ['label'] = 'ifaks',                    ['weight'] = 200,      ['type'] = 'item',       ['image'] = 'ifaks.png',                ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'ifaks for healing and a complete stress remover.'},
	['painkillers'] 			 	 = {['name'] = 'painkillers', 					['label'] = 'Painkillers', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'painkillers.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'For pain you can\'t stand anymore, take this pill that\'d make you feel great again'},
	['walkstick'] 				 	 = {['name'] = 'walkstick', 			  	  	['label'] = 'Walking Stick', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'walkstick.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Walking stick for ya\'ll grannies out there.. HAHA'},

	-- Communication
	['phone'] 			 	 	 	 = {['name'] = 'phone', 			  			['label'] = 'Phone', 					['weight'] = 700, 		['type'] = 'item', 		['image'] = 'iphone.png', 				['unique'] = true, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Neat phone ya got there'},
	['radio'] 			 	 		 = {['name'] = 'radio', 			  			['label'] = 'Radio', 					['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'radio.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'You can communicate with this through a signal'},
	['iphone'] 				 	 	 = {['name'] = 'iphone', 			  	  		['label'] = 'iPhone', 				    ['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'iphone.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Very expensive phone'},
	['samsungphone'] 				 = {['name'] = 'samsungphone', 			  	  	['label'] = 'Samsung S10', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'samsungphone.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Very expensive phone'},
	['laptop'] 				 		 = {['name'] = 'laptop', 			  	  		['label'] = 'Laptop', 					['weight'] = 4000, 		['type'] = 'item', 		['image'] = 'laptop.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Expensive laptop'},
	['tablet'] 				 		 = {['name'] = 'tablet', 			  	  		['label'] = 'Tablet', 					['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'tablet.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Expensive tablet'},
	['fitbit'] 			 	 	 	 = {['name'] = 'fitbit', 			  			['label'] = 'Fitbit', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'fitbit.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'I like fitbit'},
    ['radioscanner'] 			 	 = {['name'] = 'radioscanner', 			  		['label'] = 'Radio Scanner', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'radioscanner.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'With this you can get some police alerts. Not 100% effective however'},
	['pinger'] 			 			 = {['name'] = 'pinger', 						['label'] = 'Pinger', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pinger.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'With a pinger and your phone you can send out your location'},
    ['cryptostick'] 			 	 = {['name'] = 'cryptostick', 			  		['label'] = 'Crypto Stick', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'cryptostick.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Why would someone ever buy money that doesn\'t exist.. How many would it contain..?'},

	--Bit Mining	
	["standard_cpu"] 			 	 	 = {["name"] = "standard_cpu", 			  			["label"] = "Standard Cpu", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "standard_cpu.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sometimes you'd want everything to burn.."},	
	["e2_cpu"] 			 	 	 = {["name"] = "e2_cpu", 			  			["label"] = "E2", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "e2_cpu.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sometimes you'd want everything to burn.."},	
	["quantum_cpu"] 			 	 	 = {["name"] = "quantum_cpu", 			  			["label"] = "Quantum", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "quantum_cpu.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sometimes you'd want everything to burn.."},

	-- Theft and Jewelry
	['rolex'] 				 	 	 = {['name'] = 'rolex', 			  	  		['label'] = 'Golden Watch', 			['weight'] = 150, 		['type'] = 'item', 		['image'] = 'rolex.png', 			    ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A golden watch seems like the jackpot to me!'},
	['diamond_ring'] 				 = {['name'] = 'diamond_ring', 			  	  	['label'] = 'Diamond Ring', 			['weight'] = 150, 		['type'] = 'item', 		['image'] = 'diamond_ring.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A diamond ring seems like the jackpot to me!'},
	['diamond'] 				     = {['name'] = 'diamond', 			  	    	['label'] = 'Diamond', 		        	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'diamond.png', 		        ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A diamond seems like the jackpot to me!'},
	['goldchain'] 				 	 = {['name'] = 'goldchain', 			  	  	['label'] = 'Golden Chain', 			['weight'] = 150, 		['type'] = 'item', 		['image'] = 'goldchain.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A golden chain seems like the jackpot to me!'},
	['10kgoldchain'] 				 = {['name'] = '10kgoldchain', 			  	  	['label'] = '10k Gold Chain', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = '10kgoldchain.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '10 carat golden chain'},
	['goldbar'] 			 	 	 = {['name'] = 'goldbar', 			  			['label'] = 'Gold Bar', 				['weight'] = 700, 	    ['type'] = 'item', 		['image'] = 'goldbar.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Looks pretty expensive to me'},

	-- Cops Tools
	['armor'] 		 				 = {['name'] = 'armor', 						['label'] = 'Armor', 					['weight'] = 5000, 	    ['type'] = 'item', 		['image'] = 'armor.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Some protection won\'t hurt... right?'},
	['heavyarmor'] 		 			 = {['name'] = 'heavyarmor', 					['label'] = 'Heavy Armor', 				['weight'] = 5000, 	    ['type'] = 'item', 		['image'] = 'armor.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Some protection won\'t hurt... right?'},
	['handcuffs'] 				 	 = {['name'] = 'handcuffs', 			    	['label'] = 'Handcuffs', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'handcuffs.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Comes in handy when people misbehave. Maybe it can be used for something else?'},
	['police_stormram'] 			 = {['name'] = 'police_stormram', 			  	['label'] = 'Stormram', 				['weight'] = 18000, 	['type'] = 'item', 		['image'] = 'police_stormram.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A nice tool to break into doors'},
	['empty_evidence_bag'] 			 = {['name'] = 'empty_evidence_bag', 			['label'] = 'Empty Evidence Bag', 		['weight'] = 0, 		['type'] = 'item', 		['image'] = 'evidence.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Used a lot to keep DNA from blood, bullet shells and more'},
	['filled_evidence_bag'] 		 = {['name'] = 'filled_evidence_bag', 			['label'] = 'Evidence Bag', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'evidence.png', 			['unique'] = true, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A filled evidence bag to see who committed the crime >:('},
	['police-shield'] 			 	 = {['name'] = 'police-shield', 				['label'] = 'Police Shield', 			['weight'] = 10000, 	['type'] = 'item', 		['image'] = 'police-shield.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A Shield for Police'},
	["drone"] 				 	 	 = {["name"] = "drone", 			  	  		["label"] = "Police Drone", 			["weight"] = 8000, 		["type"] = "item", 		["image"] = "drone.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Playable RC Toy Car with embedded Camera"},
	["specialbadge"] 				 = {["name"] = "specialbadge", 			  		["label"] = "Police Badge", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "specialbadge.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Special Badge of Law Enforcements"},
	["uvlight"]						={["name"]="uvlight",							["label"]="UV Flashlight",				["weight"]=300,			["type"]="item",		["image"]="uvlight.png",				["unique"]=true,		["useable"]=true,		["shouldClose"]=true,		["combinable"]=nil,		["description"]="A flashlight to see fingerprints"},

	
	-- Firework Tools
	['firework1'] 				 	 = {['name'] = 'firework1', 			  	  	['label'] = '2Brothers', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'firework1.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Fireworks'},
	['firework2'] 				 	 = {['name'] = 'firework2', 			  	  	['label'] = 'Poppelers', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'firework2.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Fireworks'},
	['firework3'] 				 	 = {['name'] = 'firework3', 			  	  	['label'] = 'WipeOut', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'firework3.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Fireworks'},
	['firework4'] 				 	 = {['name'] = 'firework4', 			  	  	['label'] = 'Weeping Willow', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'firework4.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Fireworks'},

	-- Sea Tools
    ['dendrogyra_coral'] 			 = {['name'] = 'dendrogyra_coral', 			  	['label'] = 'Dendrogyra', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'dendrogyra_coral.png', 	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Its also known as pillar coral'},
    ['antipatharia_coral'] 			 = {['name'] = 'antipatharia_coral', 			['label'] = 'Antipatharia', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'antipatharia_coral.png', 	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Its also known as black corals or thorn corals'},
	['diving_gear'] 			     = {['name'] = 'diving_gear', 					['label'] = 'Diving Gear', 				['weight'] = 30000, 	['type'] = 'item', 		['image'] = 'diving_gear.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'An oxygen tank and a rebreather'},
	['diving_scuba'] 			     = {['name'] = 'diving_scuba', 					['label'] = 'Humane Lab Diving Gear', 				['weight'] = 30000, 	['type'] = 'item', 		['image'] = 'diving_gear.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'An oxygen tank with humane lab authentication label'},

	--Pets
	["petfood"] 			 		 = {["name"] = "petfood", 						["label"] = "Pet Food", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "petfood.png", 	["unique"] = false, 					["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Food for your pet pal"},
	["tennisball"] 			 		 = {["name"] = "tennisball", 					["label"] = "Tennis Ball", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "tennisball.png", 	["unique"] = false, 					["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Tennis Ball for your pet"},

	--FUN
	["rccar"]            			 = {["name"] = "rccar", 						["label"] = "RC Car", 					["weight"] = 800, 		["type"] = "item", 		["image"] = "rccar.png", 		["unique"] = true, 					["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil, 	["description"] = "Playable RC Toy Car with embedded Camera"},
	["boombox"] 					 = {["name"] = "boombox", 			  			["label"] = "Boombox", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "boombox.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "Play some music."},
	["skateboard"] 	  	 	 	     = {["name"] = "skateboard",           		    ["label"] = "Skateboard",	 			["weight"] = 1, 		["type"] = "item", 		["image"] = "skateboard.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A cool skateboard!"},
	["dslrcamera"]						= {["name"] = "dslrcamera", 				["label"] = "PD Camera", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "dslrcamera.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true, ["combinable"] = nil, ["description"] = "DSLR Camera, with cloud uplink.. cool right?"},
	['gym_membership'] 					 = {['name'] = 'gym_membership', 			 	  	  	['label'] = 'Gym membership', 						['weight'] = 0, 		['type'] = 'item', 		['image'] = 'papers.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Gym Notebook'},
	["head_bag"] 					 = {["name"] = "head_bag", 			 			["label"] = "Head Bag", 						["weight"] = 5, 		["type"] = "item", 		["image"] = "head_bag.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Put mask on hostage."},
	["stickynotepad"] 				     = {["name"] = "stickynotepad", 			    		["label"] = "Sticky Notepad", 			["weight"] = 10, 		["type"] = "item", 		["image"] = "stickynotepad.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Notepad Key"},
	
	-- mt-clothingbag
	["mala_roupas"]  				= {["name"] = "mala_roupas", 					["label"] = "Clothing Bag", 			["weight"] = 100, 		["type"] = "item", 			["image"] = "mala_roupas.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},

	
	
	--Spray
	["spray"] 			 	 	     = {["name"] = "spray", 			  			["label"] = "Colour Spray", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "spray.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Spray for crafting Graffitis"},	
	["spray_remover"] 			     = {["name"] = "spray_remover", 				["label"] = "Spray Remover", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "spray_remover.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Remove Graffitis"},	

	-- Vehicle Contracts
	["contract"] 				     = {["name"] = "contract", 			    		["label"] = "Contract", 			["weight"] = 100, 		["type"] = "item", 		["image"] = "contract.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Blue Print for crafting Moneywash lab key"},
	

	---------------
	----J O B S----
	---------------

	--Taco

	["taco"] 		 	             = {["name"] = "taco", 			                ["label"] = "Taco", 				      ["weight"] = 100, 		["type"] = "item", 		["image"] = "taco.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["lettuce"] 		 	         = {["name"] = "lettuce", 			            ["label"] = "lettuce", 				    ["weight"] = 100, 		["type"] = "item", 		["image"] = "lettuce.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["bun"] 		 	             = {["name"] = "bun", 			                ["label"] = "bun", 				        ["weight"] = 100, 		["type"] = "item", 		["image"] = "bun.png", 			        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["oil"] 		 	             = {["name"] = "oil", 			                ["label"] = "oil", 				        ["weight"] = 100, 		["type"] = "item", 		["image"] = "oil.png", 			        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	['meat'] 			        	   = {['name'] = 'meat', 			        	  	  ['label'] = 'meat', 				     	['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'meat.png', 	        	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
["transmission4"]=      {["name"] = "transmission4",	["label"] = "Tier 4 Transmission",	["weight"] = 0, ["type"] = "item",  ["image"] = "transmission4.png",    ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},


	--Hunting Job
	["meatdeer"] 		 			 	 = {["name"] = "meatdeer",       	    		["label"] = "Deer Horns",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "deerhorns.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Deer Horns"},
	["meatpig"] 		 			 	 = {["name"] = "meatpig",       	    		["label"] = "Pig Meat",	 					["weight"] = 100, 		["type"] = "item", 		["image"] = "pigpelt.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Pig Meat"},
	["meatboar"] 		 			 	 = {["name"] = "meatboar",       	    		["label"] = "Boar Tusks",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "boartusks.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Boar Tusks"},
	["meatlion"] 		 			 	 = {["name"] = "meatlion",       	    		["label"] = "Cougar Claws",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "cougarclaw.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Cougar Claw"},
	["meatcow"] 		 			 	 = {["name"] = "meatcow",       	    		["label"] = "Cow Pelt",	 					["weight"] = 100, 		["type"] = "item", 		["image"] = "cowpelt.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Cow Pelt"},
	["meatrabbit"] 		 			 	 = {["name"] = "meatrabbit",       	    		["label"] = "Rabbit Fur",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "rabbitfur.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Rabbit Fur"},
	["meatbird"] 		 			 	 = {["name"] = "meatbird",       	    		["label"] = "Bird Feather",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "birdfeather.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Bird Feather"},
	["meatcoyote"] 		 			 	 = {["name"] = "meatcoyote",       	    		["label"] = "Coyote Pelt",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "coyotepelt.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Coyote Pelt"},
	["huntingbait"] 		 			 = {["name"] = "huntingbait",       	    	["label"] = "Hunting Bait",	 				["weight"] = 150, 		["type"] = "item", 		["image"] = "huntingbait.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "Hunting Bait"},

	-- Mining Job #1
	["dream-diamonds"] 				= {["name"] = "dream-diamonds", 			  	["label"] = "Diamond", 						["weight"] = 1000, 		["type"] = "item", 		["image"] = "ddiamond.png", 		["unique"] = false, 		["useable"] = false, 	["shouldClose"] = false, 	["rare"] = false,   	["combinable"] = nil,   ["description"] = "A Diamond that shimmers"},
	["dream-tin"] 		 	 		= {["name"] = "dream-tin",           			["label"] = "Tin",	 						["weight"] = 750, 	    ["type"] = "item", 		["image"] = "dtin.png", 			["unique"] = false, 		["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Tin - A metal"},
	["dream-silver"] 		 	 	= {["name"] = "dream-silver",           		["label"] = "Silver",	 					["weight"] = 750, 	    ["type"] = "item", 		["image"] = "dsilver.png", 			["unique"] = false, 		["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Silver - Same as gold. but not gold ;D"},
	["dream-lead"] 		 	 		= {["name"] = "dream-lead",           			["label"] = "Lead",	 						["weight"] = 750, 	    ["type"] = "item", 		["image"] = "dlead.png", 			["unique"] = false, 		["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Lead - A metal"},
	["dream-zinc"] 		 	 		= {["name"] = "dream-zinc",           			["label"] = "Zinc",	 						["weight"] = 750, 	    ["type"] = "item", 		["image"] = "dzinc.png", 			["unique"] = false, 		["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Zinc - A metal"},
	["dream-molibden"] 		 	 	= {["name"] = "dream-molibden",           		["label"] = "Molibden",	 					["weight"] = 750, 	    ["type"] = "item", 		["image"] = "dmoli.png", 			["unique"] = false, 		["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Whaat ? Molibden ? Where you got this ?"},
	["dream-iron"] 		 	 		= {["name"] = "dream-iron",           			["label"] = "Iron",	 						["weight"] = 750, 	    ["type"] = "item", 		["image"] = "diron.png", 			["unique"] = false, 		["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Iron - A metal"},
	["dream-copper"] 		 	 	= {["name"] = "dream-copper",           		["label"] = "Iron",	 						["weight"] = 750, 	    ["type"] = "item", 		["image"] = "dcopper.png", 			["unique"] = false, 		["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Copper - A metal"},

	-- Mining Job #2
	['sulfur']						= {['name'] = 'sulfur', 			 			['label'] = 'Sulfur', 					['weight'] = 10, 		['type'] = 'item', 		['image'] = 'sulfur.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Sulfer Cristals (S8)'},
	['kno3'] 			 			= {['name'] = 'kno3', 			 				['label'] = 'Pottasium Nitrate', 		['weight'] = 10, 		['type'] = 'item', 		['image'] = 'kno3.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Pottasium Nitrate Cristals (KNO3)'},
	['coal'] 			 			= {['name'] = 'coal', 			 				['label'] = 'Black Coal', 				['weight'] = 10, 		['type'] = 'item', 		['image'] = 'coal.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Black Coal'},
	['diamond'] 			 		= {['name'] = 'diamond', 			 			['label'] = 'Diamond', 					['weight'] = 10, 		['type'] = 'item', 		['image'] = 'diamond.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Precious Diamond Gem'},
	['emerald'] 			 		= {['name'] = 'emerald', 			 			['label'] = 'Emerald', 					['weight'] = 10, 		['type'] = 'item', 		['image'] = 'emerald.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Precious Emerald Gem'},
	['gunpowder'] 			 		= {['name'] = 'gunpowder', 			 			['label'] = 'Gun Powder', 				['weight'] = 30, 		['type'] = 'item', 		['image'] = 'gunpowder.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Gun Powder for making ammo'},

	-- Lumberjack Job
	["wood_cut"] 		 		 	= {["name"] = "wood_cut",           			["label"] = "Cut Wood",	 				["weight"] = 1000,  	["type"] = "item", 		["image"] = "wood_cut.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Wood"},
	["wood_proc"] 		 		 	= {["name"] = "wood_proc",           			["label"] = "Proc Wood",	 			["weight"] = 1000,  	["type"] = "item", 		["image"] = "wood_proc.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Wood"},

	-- Fishing
	["fishrod"] 					 = {["name"] = "fishrod", 			 	  	  	["label"] = "Fishing Rod", 		    	["weight"] = 500, 		["type"] = "item", 		["image"] = "fishingrod.png", 			["unique"] = true, 	    ["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Just enjoy fishing.."},
	["fish-1"] 						 = {["name"] = "fish-1", 			 	  	  	["label"] = "Almost Goldfish", 			["weight"] = 750, 		["type"] = "item", 		["image"] = "fish-1.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "This is almost a goldfish.."},
	["fish-2"] 						 = {["name"] = "fish-2", 			 	  	  	["label"] = "Small Perch", 				["weight"] = 1500, 		["type"] = "item", 		["image"] = "fish-2.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Beware I can sting.."},
	["fish-3"] 						 = {["name"] = "fish-3", 			 	  	  	["label"] = "Big Pike", 				["weight"] = 2000, 		["type"] = "item", 		["image"] = "fish-3.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "What a whopper of a fish."},
	["stripedbass"] 	 		     = {["name"] = "stripedbass", 	  	  	        ["label"] = "Fish Stripedbass", 	    ["weight"] = 500, 		["type"] = "item", 		["image"] = "stripedbass.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Sea Fish. stripedbass"},
	["bluefish"] 	 		         = {["name"] = "bluefish", 	  	  		        ["label"] = "Bluefish", 			    ["weight"] = 500, 		["type"] = "item", 		["image"] = "bluefish.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Sea Fish. bluefish"},
	["redfish"] 	 		         = {["name"] = "redfish", 	  	  		        ["label"] = "Red Fish", 			    ["weight"] = 500, 		["type"] = "item", 		["image"] = "redfish.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Sea Fish. redfish"},
	["pacifichalibut"] 	 		     = {["name"] = "pacifichalibut", 	  	  		["label"] = "Pacifichalibut Fish", 	    ["weight"] = 500, 		["type"] = "item", 		["image"] = "pacifichalibut.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Sea Fish. pacifichalibut"},
	["goldfish"] 	 		         = {["name"] = "goldfish", 	  	  		        ["label"] = "Gold Fish", 			    ["weight"] = 500, 		["type"] = "item", 		["image"] = "goldfish.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Sea Fish. goldfish"},
	["largemouthbass"] 	 		     = {["name"] = "largemouthbass", 	  	  		["label"] = "Largemouthbass", 			["weight"] = 500, 		["type"] = "item", 		["image"] = "largemouthbass.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Sea Fish, largemouthbass"},
	["salmon"] 	 		             = {["name"] = "salmon", 	  	  		        ["label"] = "Salmon Fish", 			    ["weight"] = 500, 		["type"] = "item", 		["image"] = "salmon.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Sea Fish. salmon"},
	["catfish"] 	 		         = {["name"] = "catfish", 	  	  		        ["label"] = "Catfish", 			     	["weight"] = 500, 		["type"] = "item", 		["image"] = "catfish.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Sea Fish. catfish"},
	["tigersharkmeat"] 	 		     = {["name"] = "tigersharkmeat", 	  	  		["label"] = "Tigersharkmeat", 			["weight"] = 500, 		["type"] = "item", 		["image"] = "tigersharkmeat.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Sea Fish. tigersharkmeat"},
	["stingraymeat"] 	 		     = {["name"] = "stingraymeat", 	  	  		    ["label"] = "Fish Stingraymeat", 		["weight"] = 500, 		["type"] = "item", 		["image"] = "stingraymeat.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Sea Fish. stingraymeat"},
	["killerwhalemeat"] 	 		 = {["name"] = "killerwhalemeat", 	            ["label"] = "Fish Killerwhalemeat", 	["weight"] = 500, 		["type"] = "item", 		["image"] = "killerwhalemeat.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Sea Fish. killerwhalemeat"},
	["fish"] 	 		             = {["name"] = "fish", 	  	  		            ["label"] = "Fish", 			     	["weight"] = 500, 		["type"] = "item", 		["image"] = "fish.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Sea Fish."},
	["fishingbait"] 	 		     = {["name"] = "fishingbait", 	  	            ["label"] = "Fishing Bait", 			["weight"] = 500, 		["type"] = "item", 		["image"] = "fishingbait.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Fishing Bait."},
	["plasticbag"] 					 = {["name"] = "plasticbag", 			 	 	["label"] = "Plasticbag", 				["weight"] = 125, 		["type"] = "item", 		["image"] = "plasticbag.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Bag over the head and go, anyway??"},
	["shoe"] 						 = {["name"] = "shoe", 			 	     	  	["label"] = "Old Shoe", 				["weight"] = 1500, 		["type"] = "item", 		["image"] = "shoe.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sporty model though."},
	
	-- Chicken Job
	["alivechicken"] 				 = {["name"] = "alivechicken", 					["label"] = "alivechicken", 			["weight"] = 500, 		["type"] = "item", 		["image"] = "alivechicken.png", 		["unique"] = false, 					["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "For all the thirsty out there"},
	["packagedchicken"] 			 = {["name"] = "packagedchicken", 				["label"] = "packagedchicken", 			["weight"] = 500, 		["type"] = "item", 		["image"] = "packagedchicken.png", 		["unique"] = false, 					["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "For all the thirsty out there"},
	["slaughteredchicken"] 			 = {["name"] = "slaughteredchicken", 			["label"] = "slaughteredchicken", 		["weight"] = 500, 		["type"] = "item", 		["image"] = "slaughteredchicken.png", 	["unique"] = false, 					["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "For all the thirsty out there"},
	
	-- Farming Job
	["corn_kernel"] 		         = {["name"] = "corn_kernel", 			        ["label"] = "Cone Kernel", 	            ["weight"] = 300, 		["type"] = "item", 		["image"] = "corn_kernel.png", 	        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Corn kernel"},
	["corn_packet"] 		         = {["name"] = "corn_packet", 			        ["label"] = "Cone Packet", 	            ["weight"] = 500, 		["type"] = "item", 		["image"] = "corn_packet.png", 	        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Corn Packet"},
	["orange"] 		                 = {["name"] = "orange", 			            ["label"] = "Orange", 	                ["weight"] = 100, 		["type"] = "item", 		["image"] = "orange.png", 	            ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Orange"},
	["apple"] 		                 = {["name"] = "apple", 			            ["label"] = "Apple", 	                ["weight"] = 100, 		["type"] = "item", 		["image"] = "apple.png", 	            ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Apple"},
	["fruit_pack"] 		             = {["name"] = "fruit_pack", 			        ["label"] = "Fruit Pack", 	            ["weight"] = 300, 		["type"] = "item", 		["image"] = "fruit_pack.png", 	        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Fruit Pack"},
	["milk"] 		                 = {["name"] = "milk", 			                ["label"] = "Milk", 	                ["weight"] = 200, 		["type"] = "item", 		["image"] = "milk.png", 	            ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Milk"},
	["milk_pack"] 		             = {["name"] = "milk_pack", 			        ["label"] = "Milk Pack", 	            ["weight"] = 500, 		["type"] = "item", 		["image"] = "milk_pack.png", 	        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Milk pack"},
	["box"] 		                 = {["name"] = "box", 			                ["label"] = "Box", 	                	["weight"] = 100, 		["type"] = "item", 		["image"] = "box.png", 	            	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "box"},


	-- Burger Shot
	--[[ Food
	["burger-bleeder"] 				 = {["name"] = "burger-bleeder", 			 	["label"] = "Bleeder", 					["weight"] = 250, 		["type"] = "item", 		["image"] = "bs_the-bleeder.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
	["burger-moneyshot"] 			 = {["name"] = "burger-moneyshot", 			 	["label"] = "Moneyshot", 				["weight"] = 300, 		["type"] = "item", 		["image"] = "bs_money-shot.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
	["burger-torpedo"] 				 = {["name"] = "burger-torpedo", 			 	["label"] = "Torpedo", 					["weight"] = 310, 		["type"] = "item", 		["image"] = "bs_torpedo.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
	["burger-heartstopper"] 		 = {["name"] = "burger-heartstopper", 			["label"] = "Heartstopper", 			["weight"] = 2500, 		["type"] = "item", 		["image"] = "bs_the-heart-stopper.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
	["burger-meatfree"] 		 	 = {["name"] = "burger-meatfree", 				["label"] = "MeatFree", 				["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_meat-free.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
	["burger-fries"] 				 = {["name"] = "burger-fries", 			 	  	["label"] = "Fries", 					["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_fries.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},

	--Drinks
	["burger-softdrink"] 			 = {["name"] = "burger-softdrink", 				["label"] = "Soft Drink", 				["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_softdrink.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ice Cold Drink."},
	["burger-mshake"] 			     = {["name"] = "burger-mshake", 				["label"] = "Milkshake", 				["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_milkshake.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Hand-scooped for you!"},
]]

-- Burger Shot
-- Food
["burger-bleeder"] 				 = {["name"] = "burger-bleeder", 			 	["label"] = "Bleeder", 					["weight"] = 250, 		["type"] = "item", 		["image"] = "bs_the-bleeder.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
["burger-moneyshot"] 			 = {["name"] = "burger-moneyshot", 			 	["label"] = "Moneyshot", 				["weight"] = 300, 		["type"] = "item", 		["image"] = "bs_money-shot.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
["burger-torpedo"] 				 = {["name"] = "burger-torpedo", 			 	["label"] = "Torpedo", 					["weight"] = 310, 		["type"] = "item", 		["image"] = "bs_torpedo.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
["burger-heartstopper"] 		 = {["name"] = "burger-heartstopper", 			["label"] = "Heartstopper", 			["weight"] = 2500, 		["type"] = "item", 		["image"] = "bs_the-heart-stopper.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
["burger-meatfree"] 		 	 = {["name"] = "burger-meatfree", 				["label"] = "MeatFree", 			["weight"] = 125, 		["type"] = "item", 			["image"] = "bs_meat-free.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
["burger-fries"] 				 = {["name"] = "burger-fries", 			 	  	["label"] = "Fries", 				["weight"] = 125, 		["type"] = "item", 			["image"] = "bs_fries.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
	-- Drinks

["burger-softdrink"] 			 = {["name"] = "burger-softdrink", 				["label"] = "Soft Drink", 				["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_softdrink.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ice Cold Drink."},
["burger-mshake"] 			     = {["name"] = "burger-mshake", 				["label"] = "Milkshake", 				["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_milkshake.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Hand-scooped for you!"},

--Ingredients
["burger-bun"] 				 	 = {["name"] = "burger-bun", 			 	  	["label"] = "Bun", 			["weight"] = 125, 		["type"] = "item", 					["image"] = "bs_bun.png", 		    		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
["burger-meat"] 				 = {["name"] = "burger-meat", 			 	  	["label"] = "Cooked Patty", 			["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_patty.png", 		    	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
["burger-lettuce"] 				 = {["name"] = "burger-lettuce", 			 	["label"] = "Lettuce", 				["weight"] = 125, 		["type"] = "item", 			["image"] = "bs_lettuce.png", 	    		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
["burger-tomato"] 				 = {["name"] = "burger-tomato", 			 	["label"] = "Tomato", 				["weight"] = 125, 		["type"] = "item", 			["image"] = "bs_tomato.png", 	    		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
["burger-raw"] 				 	 = {["name"] = "burger-raw", 			 		["label"] = "Raw Patty", 				["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_patty_raw.png", 	        ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
["burger-potato"] 				 = {["name"] = "burger-potato", 			 	["label"] = "Bag of Potatoes", 		["weight"] = 1500, 		["type"] = "item", 			["image"] = "bs_potato.png", 	    		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
["burger-mshakeformula"] 		 = {["name"] = "burger-mshakeformula", 			["label"] = "Milkshake Formula", 		["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_ingredients_icecream.png", ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
["burger-sodasyrup"] 		 	 = {["name"] = "burger-sodasyrup", 				["label"] = "Soda Syrup", 		["weight"] = 125, 		["type"] = "item", 				["image"] = "bs_ingredients_hfcs.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
["burger-toy1"] 		 		 = {["name"] = "burger-toy1", 					["label"] = "Action Figure", 			["weight"] = 50, 		["type"] = "item", 		["image"] = "action-figure.png", 		["unique"] = true, 	["useable"] = false, 	["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "An Action Figure From the late 90's"},
["burger-toy2"] 		 		 = {["name"] = "burger-toy2", 					["label"] = "Pink Teddy", 				["weight"] = 50, 		["type"] = "item", 		["image"] = "beaniebaby.png", 			["unique"] = true, 	["useable"] = false, 	["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "A Fluffy Pink Teddy from the Atic"},
["burger-murdermeal"] 		 	 = {["name"] = "burger-murdermeal", 			["label"] = "Murder Meal", 				["weight"] = 125, 		["type"] = "item", 		["image"] = "burger-box.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Amazing Murder Meal with a chance of a toy."},


	-- Tailor Job
	["shirt"] 						 = {["name"] = "shirt", 						["label"] = "Shirt", 					["weight"] = 2500, 		["type"] = "item", 		["image"] = "shirt.png", 				["unique"] = false, 	["useable"] = false, 		["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Nice shirt you got there"},
	["fabricroll"] 					 = {["name"] = "fabricroll", 					["label"] = "Fabricroll", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "fabric.png", 				["unique"] = false, 	["useable"] = false, 		["shouldClose"] = false, ["combinable"] = nil, ["description"] = "An item that need to make shirts"},
	["cotton"] 						 = {["name"] = "cotton", 						["label"] = "Cotton", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "cotton.png", 				["unique"] = false, 	["useable"] = false, 		["shouldClose"] = false, ["combinable"] = nil, ["description"] = "An item that need to make fabricrolls"},

	---------------
	-----HEIST-----
	---------------

		-- mt-stealfuel
	["jerrycan_combustivel"]  		= {["name"] = "jerrycan_combustivel", 				["label"] = "Empty JerryCan", 		["weight"] = 100, 		["type"] = "item", 			["image"] = "jerrycan_combustivel.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Steal Fuel ;)"},
	["mangueira_combustivel"]  		= {["name"] = "mangueira_combustivel", 				["label"] = "Fuel Hose", 			["weight"] = 100, 		["type"] = "item", 			["image"] = "mangueira_combustivel.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Need Help with stealing fuel ? ;)"},
	
	-- FIB Heist
	["printedcash"] 				= {["name"] = "printedcash", 					["label"] = "Printed Cash Bundle", 		["weight"] = 0, 		["type"] = "item", 		["image"] = "cashstack.png", 			["unique"] = true, 		["useable"] = true, 		["shouldClose"] = false, ["combinable"] = nil, ["expire"] = 24, ["description"] = "Cash!"},


	-- Casino Heist
	['key1'] 						= {['name'] = 'key1', 							['label'] = 'Key 1', 					['weight'] = 1, 		['type'] = 'item', 		['image'] = 'key1.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true, 	['combinable'] = nil, 	['description'] = 'Key 1'},
	['key2'] 						= {['name'] = 'key2', 							['label'] = 'Key 2', 					['weight'] = 1, 		['type'] = 'item', 		['image'] = 'key2.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true, 	['combinable'] = nil, 	['description'] = 'Key 2'},

	-- Art Heist
	["paintinge"] 					 = {["name"] = "paintinge", 			 	    ["label"] = "Rome Bodybuilder Painting", 				["weight"] = 150, 		["type"] = "item", 		["image"] = "paintinge.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Rome Body Builder vintage art"},
	["paintingi"] 					 = {["name"] = "paintingi", 			 	    ["label"] = "Mexican Beauty Painting", 				["weight"] = 150, 		["type"] = "item", 		["image"] = "paintingi.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Mexical Beauty Vintage Painting"},
	["paintingh"] 					 = {["name"] = "paintingh", 			 	    ["label"] = "Two Friends Painting", 				["weight"] = 150, 		["type"] = "item", 		["image"] = "paintingh.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Two Friends Vintage Painting"},
	["paintingj"] 					 = {["name"] = "paintingj", 			 	    ["label"] = "Sisters Painting", 				["weight"] = 150, 		["type"] = "item", 		["image"] = "paintingj.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sisters Vintage Painting"},
	["paintingf"] 					 = {["name"] = "paintingf", 			 	    ["label"] = "Bloomy Santos Painting", 				["weight"] = 150, 		["type"] = "item", 		["image"] = "paintingf.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Bloomy Santos Vintage Painting"},
	["paintingg"] 					 = {["name"] = "paintingg", 			 	    ["label"] = "Sunshine Painting", 				["weight"] = 150, 		["type"] = "item", 		["image"] = "paintingg.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sunshine Vintage Painting"},

	-- Weapon Heist
	["greenchip"] 				 	 = {["name"] = "greenchip", 			  	  		["label"] = "Green Key", 			["weight"] = 100, 		["type"] = "item", 		["image"] = "greenchip.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Green Key needed for Gun Heist"},
	["redchip"] 				 	 = {["name"] = "redchip", 			  	  		["label"] = "Red Key", 			["weight"] = 100, 		["type"] = "item", 		["image"] = "redchip.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Red Key needed for Gun Heist"},
	["bluechip"] 				 	 = {["name"] = "bluechip", 			  	  		["label"] = "Blue Key", 			["weight"] = 100, 		["type"] = "item", 		["image"] = "bluechip.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Blue Key needed for Gun Heist"},

	-- Train Heist
	["cutter"] 			 			 		 = {["name"] = "cutter", 						["label"] = "Angle Grinder", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "cutter.png", 	["unique"] = false, 					["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Cutter Torch for underwater cutting"},
	["uranium_cell"] 			 			 = {["name"] = "uranium_cell", 			["label"] = "Uranium Cell", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "uranium_cell.png", 	["unique"] = false, 					["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Angle Grinder for metal cutting"},
	
	-- Kidnapping
	["videorecord"] 			 			 = {["name"] = "videorecord", 			["label"] = "Video Record", 				["weight"] = 550, 		["type"] = "item", 		["image"] = "videorecord.png", 	["unique"] = true, 					["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Video Recording of Kidnapped Person"},



	--------------------
	------ DRUGS -------
	--------------------
	["wet_weed"] 		 	 	 	 = {["name"] = "wet_weed",           			["label"] = "Moist Weed",	 			["weight"] = 3000, 		["type"] = "item", 		["image"] = "wet_weed.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Wet weed that needs to be treated!"},
    ["coke"] 		 	 	 	     = {["name"] = "coke",           				["label"] = "Cocaine", 					["weight"] = 1000,		["type"] = "item", 		["image"] = "coke.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Processed cocaine"},
    ["coca_leaf"] 		 	 	 	 = {["name"] = "coca_leaf",           			["label"] = "Cocaine leaves",	 		["weight"] = 1500,		["type"] = "item", 		["image"] = "coca_leaf.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Cocaine leaves that must be processed !"},
    ["cannabis"] 			 		 = {["name"] = "cannabis", 						["label"] = "Cannabis", 				["weight"] = 2500, 		["type"] = "item", 		["image"] = "cannabis.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Uncured cannabis"},
    ["marijuana"] 			 		 = {["name"] = "marijuana", 					["label"] = "Marijuana", 				["weight"] = 500,		["type"] = "item", 		["image"] = "marijuana.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Some fine smelling buds."},
    ["chemicals"] 		 	 	 	 = {["name"] = "chemicals",           			["label"] = "Chemicals",	 			["weight"] = 1500, 		["type"] = "item", 		["image"] = "chemicals.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Chemicals, handle with care..."},
    ["poppyresin"] 		 	 	 	 = {["name"] = "poppyresin",           			["label"] = "Poppy resin",	 			["weight"] = 2000, 		["type"] = "item", 		["image"] = "poppyresin.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "It sticks to your fingers when you handle it."},
    ["heroin"] 		 	 	 	     = {["name"] = "heroin",           				["label"] = "Heroin",	 				["weight"] = 500, 		["type"] = "item", 		["image"] = "heroin.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Really addictive depressant..."},
    ["lsa"] 		 	 	 	     = {["name"] = "lsa",           				["label"] = "LSA",	 					["weight"] = 500, 		["type"] = "item", 		["image"] = "lsa.png", 					["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Almost ready to party..."},
    ["lsd"] 		 	 	 	     = {["name"] = "lsd",           				["label"] = "LSD",	 					["weight"] = 500, 		["type"] = "item", 		["image"] = "drug_lsd.png", 					["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Lets get this party started!"},
    ["meth"] 		 	 	 	     = {["name"] = "meth",           				["label"] = "Meth",	 					["weight"] = 500, 		["type"] = "item", 		["image"] = "meth.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Really addictive stimulant..."},
    ["hydrochloric_acid"] 			 = {["name"] = "hydrochloric_acid", 			["label"] = "Hydrochloric Acid",		["weight"] = 1500, 		["type"] = "item", 		["image"] = "hydrochloric_acid.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Chemicals, handle with care!"},
    ["sodium_hydroxide"] 			 = {["name"] = "sodium_hydroxide", 				["label"] = "Sodium Hydroxide", 		["weight"] = 1500, 		["type"] = "item", 		["image"] = "sodium_hydroxide.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Chemicals, handle with care!"},
    ["sulfuric_acid"] 		 	 	 = {["name"] = "sulfuric_acid",           		["label"] = "Sulfuric Acid",	 		["weight"] = 1500, 		["type"] = "item", 		["image"] = "sulfuric_acid.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Chemicals, handle with care!"},
    ["thionyl_chloride"] 		 	 = {["name"] = "thionyl_chloride",           	["label"] = "Thionyl Chloride",	 		["weight"] = 1500, 		["type"] = "item", 		["image"] = "thionyl_chloride.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Chemicals, handle with care!"},
    ["liquidmix"] 		 	 	     = {["name"] = "liquidmix",           		    ["label"] = "Liquid Chem Mix",	 		["weight"] = 1500, 		["type"] = "item", 		["image"] = "liquidmix.png", 		    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Chemicals, handle with care!"},
    ["bakingsoda"] 		 	 	     = {["name"] = "bakingsoda",           		    ["label"] = "Baking Soda",	 		    ["weight"] = 1500, 		["type"] = "item", 		["image"] = "bakingsoda.png", 		    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Household Baking Soda!"},
    ["chemicalvapor"] 		 	     = {["name"] = "chemicalvapor",           	    ["label"] = "Chemical Vapors",	 		["weight"] = 1500, 		["type"] = "item", 		["image"] = "chemicalvapor.png", 	    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "High Pressure Chemical Vapors, Explosive!"},
    ["trimming_scissors"] 		 	 = {["name"] = "trimming_scissors",           	["label"] = "Trimming Scissors",	 	["weight"] = 1500, 		["type"] = "item", 		["image"] = "trimming_scissors.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Very Sharp Trimming Scissors"},
    ['methtray'] 					 = {['name'] = 'methtray', 						['label'] = 'Meth Tray', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'meth_tray.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'make some meth'},
    ['methkey'] 					 = {['name'] = 'methkey', 						['label'] = 'Key A', 				    ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'keya.png', 			    ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Random Key, with "Walter" Engraved on the Back...'},
    ['cocainekey'] 					 = {['name'] = 'cocainekey', 					['label'] = 'Key B', 				    ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'keyb.png', 			    ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Random Key, with a "Razorblade" Engraved on the Back...'},
    ['weedkey'] 					 = {['name'] = 'weedkey', 						['label'] = 'Key C', 				    ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'keyc.png', 			    ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Random Key, with a "Seed" Engraved on the Back...'},
    ['finescale'] 					 = {['name'] = 'finescale', 					['label'] = 'Fine Scale', 			    ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'finescale.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Scale Used for Fine Powders and Materials.'},
    ['coke_small_brick'] 		 	 = {['name'] = 'coke_small_brick', 				['label'] = 'Coke Package', 			['weight'] = 350, 		['type'] = 'item', 		['image'] = 'coke_small_brick.png', 	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Small package of cocaine, mostly used for deals and takes a lot of space'},

	-- Spice Processing
	['spiceleaf'] 			 		= {['name'] = 'spiceleaf', 			 			['label'] = 'Spice Leaf', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'spiceleaf.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Spice Leaf'},
	['spicebaggy'] 			 		= {['name'] = 'spicebaggy', 			 			['label'] = 'Spice Bag', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'crack_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Spice Bags'},


	["acetone"] 				 	 = {["name"] = "acetone", 			  			["label"] = "Acetone", 					["weight"] = 5000, 		["type"] = "item", 		["image"] = "acetone.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "It is a colourless, highly volatile and flammable liquid with a characteristic pungent odour."},
  
	["methlab"] 				 	 = {["name"] = "methlab", 			  			["label"] = "Lab", 						["weight"] = 15000, 	["type"] = "item", 		["image"] = "lab.png", 					["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A portable Meth Lab"},
  
	["lithium"] 				 	 = {["name"] = "lithium", 			  			["label"] = "Lithium", 					["weight"] = 1000, 		["type"] = "item", 		["image"] = "lithium.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Lithium, something you can make Meth with!"},
	-- Other Tools
	['casino_ticket'] 				 = {['name'] = 'casino_ticket', 			  	['label'] = 'Lucky Weel Ticket', 		['weight'] = 0, 		['type'] = 'item', 		['image'] = 'lucky_ticket.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'Chips For Casino Gambling'},
	
["casinochips"] = {
    ["name"] = "casinochips",
    ["label"] = "Chips",
    ["weight"] = 0,
    ["type"] = "item",
    ["image"] = "casinochips.png",
    ["unique"] = false,
    ["useable"] = false,
    ["shouldClose"] = false,
    ["combinable"] = nil,
},

--//--//--//--//--//--//--//--//--//-- Item

["wheeltoken"] = {
    ["name"] = "wheeltoken",
    ["label"] = "Lucky Wheel Token",
    ["weight"] = 100,
    ["type"] = "item",
    ["image"] = "token.png",
    ["unique"] = false,
    ["useable"] = false,
    ["shouldClose"] = false,
    ["combinable"] = nil,
    ["expire"] = 9,
},
	['stickynote'] 			 	 	 = {['name'] = 'stickynote', 			  		['label'] = 'Sticky note', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'stickynote.png', 			['unique'] = true, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Sometimes handy to remember something :)'},
	['moneybag'] 			 		 = {['name'] = 'moneybag', 						['label'] = 'Money Bag', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'moneybag.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A bag with cash'},
	['parachute'] 			   		 = {['name'] = 'parachute', 					['label'] = 'Parachute', 				['weight'] = 30000, 	['type'] = 'item', 		['image'] = 'parachute.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'The sky is the limit! Woohoo!'},
	['binoculars'] 			 	 	 = {['name'] = 'binoculars', 					['label'] = 'Binoculars', 				['weight'] = 600, 		['type'] = 'item', 		['image'] = 'binoculars.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Sneaky Breaky...'},
	['snowball'] 		     		 = {['name'] = 'snowball', 		 	  			['label'] = 'Snowball', 				['weight'] = 0, 		['type'] = 'item', 	 	['image'] = 'snowball.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Should have catched it :D'},
	['lighter'] 				 	 = {['name'] = 'lighter', 			  	  		['label'] = 'Lighter', 					['weight'] = 0, 		['type'] = 'item', 		['image'] = 'lighter.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'On new years eve a nice fire to stand next to'},
	['certificate'] 				 = {['name'] = 'certificate', 			  	  	['label'] = 'Certificate', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'certificate.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Certificate that proves you own certain stuff'},
	['markedbills'] 				 = {['name'] = 'markedbills', 			  	  	['label'] = 'Dirty Money', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'markedbills.png', 			['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Money?'},
	['labkey'] 			 			 = {['name'] = 'labkey', 						['label'] = 'Key', 						['weight'] = 500, 		['type'] = 'item', 		['image'] = 'labkey.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Key for a lock...?'},
	['printerdocument'] 			 = {['name'] = 'printerdocument', 				['label'] = 'Document', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'printerdocument.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A nice document'},

	['ammonium_nitrate'] = {['name'] = 'ammonium_nitrate', ['label'] = 'Ammonium nitrate', ['weight'] = 500, ['type'] = 'item', ['image'] = 'ammonium_nitrate.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['carbon'] = {['name'] = 'carbon', ['label'] = 'Carbon', ['weight'] = 500, ['type'] = 'item', ['image'] = 'carbon.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['codeine'] = {['name'] = 'codeine', ['label'] = 'Codeine', ['weight'] = 500, ['type'] = 'item', ['image'] = 'codeine.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['drink_sprite'] = {['name'] = 'drink_sprite', ['label'] = 'Sprite', ['weight'] = 500, ['type'] = 'item', ['image'] = 'drink_sprite.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['drug_ecstasy'] = {['name'] = 'drug_ecstasy', ['label'] = 'Ecstasy', ['weight'] = 500, ['type'] = 'item', ['image'] = 'drug_ecstasy.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['drug_lean'] = {['name'] = 'drug_lean', ['label'] = 'Lean', ['weight'] = 500, ['type'] = 'item', ['image'] = 'drug_lean.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['drug_lsd'] = {['name'] = 'drug_lsd', ['label'] = 'LSD', ['weight'] = 500, ['type'] = 'item', ['image'] = 'drug_lsd.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['drug_meth'] = {['name'] = 'drug_meth', ['label'] = 'Meth', ['weight'] = 500, ['type'] = 'item', ['image'] = 'drug_meth.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['hydrogen'] = {['name'] = 'hydrogen', ['label'] = 'Hydrogen', ['weight'] = 500, ['type'] = 'item', ['image'] = 'hydrogen.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['ice'] = {['name'] = 'ice', ['label'] = 'Ice', ['weight'] = 500, ['type'] = 'item', ['image'] = 'ice_2.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['jolly_ranchers'] = {['name'] = 'jolly_ranchers', ['label'] = 'Jolly Ranchers', ['weight'] = 500, ['type'] = 'item', ['image'] = 'jolly_ranchers.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['liquid_sulfur'] = {['name'] = 'liquid_sulfur', ['label'] = 'Liquid Sulfur', ['weight'] = 500, ['type'] = 'item', ['image'] = 'liquid_sulfur.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['muriatic_acid'] = {['name'] = 'muriatic_acid', ['label'] = 'Muriatic Acid', ['weight'] = 500, ['type'] = 'item', ['image'] = 'muriatic_acid.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['nitrogen'] = {['name'] = 'nitrogen', ['label'] = 'Nitrogen', ['weight'] = 500, ['type'] = 'item', ['image'] = 'nitrogen.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['oxygen'] = {['name'] = 'oxygen', ['label'] = 'Oxygen', ['weight'] = 500, ['type'] = 'item', ['image'] = 'oxygen.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['pseudoefedrine'] = {['name'] = 'pseudoefedrine', ['label'] = 'Pseudoefedrine', ['weight'] = 500, ['type'] = 'item', ['image'] = 'pseudoefedrine.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['red_sulfur'] = {['name'] = 'red_sulfur', ['label'] = 'Red Sulfur', ['weight'] = 500, ['type'] = 'item', ['image'] = 'red_sulfur.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['sodium_hydroxide'] = {['name'] = 'sodium_hydroxide', ['label'] = 'Sodium hydroxide', ['weight'] = 500, ['type'] = 'item', ['image'] = 'sodium_hydroxide.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['cannabis'] = {['name'] = 'cannabis', ['label'] = 'Cannabis', ['weight'] = 500, ['type'] = 'item', ['image'] = 'cannabis.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['green_gelato_cannabis'] = {['name'] = 'green_gelato_cannabis', ['label'] = 'Green Gelato Cannabis', ['weight'] = 500, ['type'] = 'item', ['image'] = 'green_gelato_cannabis.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['opium'] = {['name'] = 'opium', ['label'] = 'Opium', ['weight'] = 500, ['type'] = 'item', ['image'] = 'opium.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['cocaine'] = {['name'] = 'cocaine', ['label'] = 'Cocaine', ['weight'] = 500, ['type'] = 'item', ['image'] = 'cocaine.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['vape'] = {['name'] = 'vape', ['label'] = 'Vape', ['weight'] = 500, ['type'] = 'item', ['image'] = 'vape.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Blow clouds'},
	['cfn_30s'] = {['name'] = 'cfn_30s', ['label'] = 'CFN 30s', ['weight'] = 500, ['type'] = 'item', ['image'] = 'cfn_30s.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['grand_cru'] = {['name'] = 'grand_cru', ['label'] = 'Grand Cru', ['weight'] = 500, ['type'] = 'item', ['image'] = 'grand_cru.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['absinthe'] = {['name'] = 'absinthe', ['label'] = 'absinthe', ['weight'] = 500, ['type'] = 'item', ['image'] = 'absinthe.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['drink2'] = {['name'] = 'drink2', ['label'] = 'Pink Cocktail', ['weight'] = 500, ['type'] = 'item', ['image'] = 'drink2.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['mead_cherry'] = {['name'] = 'mead_cherry', ['label'] = 'Mead Cherry', ['weight'] = 500, ['type'] = 'item', ['image'] = 'mead_cherry.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['hennessy'] = {['name'] = 'hennessy', ['label'] = 'Hennessy', ['weight'] = 500, ['type'] = 'item', ['image'] = 'henny.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['pina-colada'] = {['name'] = 'pina-colada', ['label'] = 'pina-colada', ['weight'] = 500, ['type'] = 'item', ['image'] = 'pina-colada.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['shot2'] = {['name'] = 'shot2', ['label'] = 'shot2', ['weight'] = 500, ['type'] = 'item', ['image'] = 'shot2.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['slushy'] = {['name'] = 'slushy', ['label'] = 'slushy', ['weight'] = 500, ['type'] = 'item', ['image'] = 'slushy.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['tequila'] = {['name'] = 'tequila', ['label'] = 'tequila', ['weight'] = 500, ['type'] = 'item', ['image'] = 'tequila.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['moonrock'] = {['name'] = 'moonrock_joint', ['label'] = 'Moonrock Blunt', ['weight'] = 500, ['type'] = 'item', ['image'] = 'moonrock.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['runts'] = {['name'] = 'runtz_blunt', ['label'] = 'Runtz Blunt', ['weight'] = 500, ['type'] = 'item', ['image'] = 'runts.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['gelato'] = {['name'] = 'gelato_blunt', ['label'] = 'Gelato Blunt', ['weight'] = 500, ['type'] = 'item', ['image'] = 'gelato.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['lava_cake'] = {['name'] = 'lava_cake', ['label'] = 'Lava Cake Blunt', ['weight'] = 500, ['type'] = 'item', ['image'] = 'lavacake.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['domperignon'] = {['name'] = 'domperignon', ['label'] = 'Domperignon', ['weight'] = 500, ['type'] = 'item', ['image'] = 'domperignon.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['moet'] = {['name'] = 'moet', ['label'] = 'Moet', ['weight'] = 500, ['type'] = 'item', ['image'] = 'moet.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['6pcs_wing'] = {['name'] = '6pcs_wing', ['label'] = '6pcs Wings', ['weight'] = 500, ['type'] = 'item', ['image'] = '6pcs_wing.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['cevapi'] = {['name'] = 'cevapi', ['label'] = 'Cevapi', ['weight'] = 500, ['type'] = 'item', ['image'] = 'cevapi.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['fanta'] = {['name'] = 'fanta', ['label'] = 'Fanta Soda', ['weight'] = 500, ['type'] = 'item', ['image'] = 'fanta.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['mcflurry'] = {['name'] = 'mcflurry', ['label'] = 'Mcflurry', ['weight'] = 500, ['type'] = 'item', ['image'] = 'mcflurry.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['mcmenu'] = {['name'] = 'mcmenu', ['label'] = 'Mcmenu', ['weight'] = 500, ['type'] = 'item', ['image'] = 'mcmenu.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['mcnuggets'] = {['name'] = 'mcnuggets', ['label'] = 'Mcnuggets', ['weight'] = 500, ['type'] = 'item', ['image'] = 'mcnuggets.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['mcsalad'] = {['name'] = 'mcsalad', ['label'] = 'Mcsalad', ['weight'] = 500, ['type'] = 'item', ['image'] = 'mcsalad.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['orangejuice'] = {['name'] = 'orangejuice', ['label'] = 'Orange Juice', ['weight'] = 500, ['type'] = 'item', ['image'] = 'orangejuice.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['pancakes'] = {['name'] = 'pancakes', ['label'] = 'Pancakes', ['weight'] = 500, ['type'] = 'item', ['image'] = 'pancakes.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['waffle'] = {['name'] = 'waffle', ['label'] = 'Waffle', ['weight'] = 500, ['type'] = 'item', ['image'] = 'waffle.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['wedges'] = {['name'] = 'wedges', ['label'] = 'Wedges', ['weight'] = 500, ['type'] = 'item', ['image'] = 'wedges.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['wings'] = {['name'] = 'wings', ['label'] = 'Wings', ['weight'] = 500, ['type'] = 'item', ['image'] = 'wings.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['icetea'] = {['name'] = 'icetea', ['label'] = 'Icetea', ['weight'] = 500, ['type'] = 'item', ['image'] = 'icetea.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['drpepper'] = {['name'] = 'drpepper', ['label'] = 'Drpepper', ['weight'] = 500, ['type'] = 'item', ['image'] = 'drpepper.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['mcfries'] = {['name'] = 'mcfries', ['label'] = 'Mcfries', ['weight'] = 500, ['type'] = 'item', ['image'] = 'mcfries.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['mcburger'] = {['name'] = 'mcburger', ['label'] = 'mcburger', ['weight'] = 500, ['type'] = 'item', ['image'] = 'mcburger.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
    ['kfcburger'] = {['name'] = 'kfcburger', ['label'] = 'KFC Burger', ['weight'] = 500, ['type'] = 'item', ['image'] = 'kfcburger.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['condom'] = {['name'] = 'condom', ['label'] = 'Condom', ['weight'] = 100, ['type'] = 'item', ['image'] = 'condom.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Condom'},
	['levonorgestrel'] = {['name'] = 'levonorgestrel', ['label'] = 'Levonorgestrel', ['weight'] = 100, ['type'] = 'item', ['image'] = 'levonorgestrel.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Levonorgestrel'},
	['mifepristone'] = {['name'] = 'mifepristone', ['label'] = 'Mifepristone', ['weight'] = 100, ['type'] = 'item', ['image'] = 'mifepristone.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Mifepristone'},
	['testpack'] = {['name'] = 'testpack', ['label'] = 'Test Pack', ['weight'] = 100, ['type'] = 'item', ['image'] = 'testpack.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil, ['description'] = 'Test Pack'},
	['viagra'] = {['name'] = 'viagra', ['label'] = 'Viagra', ['weight'] = 100, ['type'] = 'item', ['image'] = 'viagra.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['combinable'] = nil,   ['description'] = 'Viagra'},
	['bundles'] = {['name'] = 'bundles', ['label'] = 'Bundles', ['weight'] = 500, ['type'] = 'item', ['image'] = 'Bundles.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['remymartin'] = {['name'] = 'Remmartin', ['label'] = 'Remy', ['weight'] = 500, ['type'] = 'item', ['image'] = 'remy martin.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['dusse'] = {['name'] = 'dusse', ['label'] = 'Dusse', ['weight'] = 500, ['type'] = 'item', ['image'] = 'dusse.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['eyelashes'] = {['name'] = 'eyelashes', ['label'] = 'Eye Lashes', ['weight'] = 500, ['type'] = 'item', ['image'] = 'eyelashes.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	["redw"] 						 = {["name"] = "redw", 			 	  	  		["label"] = "Redwood Pack", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "redw.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Take out your cigarettes"},
	["marlboro"] 				     = {["name"] = "marlboro", 			 	  	  	["label"] = "Marlboro Pack", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "marlboro.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Take out your cigarettes"},
	["cubancigar"] 			         = {["name"] = "cubancigar", 			 	  	["label"] = "Cuban Cigar", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "cubancigar.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Real cigar"},
	["davidoffcigar"] 	             = {["name"] = "davidoffcigar", 			 	["label"] = "Davidoff Cigar", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "davidoffcigar.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Real cigar"},
	["redwcig"] 				     = {["name"] = "redwcig", 			 	  	  	["label"] = "Redwood Cigarette", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "redwcig.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Smoking cigarette"},	
	["marlborocig"] 		         = {["name"] = "marlborocig", 			 	  	["label"] = "Marlboro Cigarette", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "marlborocig.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Smoking cigarette"},
	["vape"] 						 = {["name"] = "vape", 			 	  	  		["label"] = "Vape", 					["weight"] = 200, 		["type"] = "item", 		["image"] = "vape.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Electronic cigarette"},
	["liquid"] 					     = {["name"] = "liquid", 			 	  	  	["label"] = "Liquid", 					["weight"] = 200, 		["type"] = "item", 		["image"] = "liquid.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Vape liquid"},
	["lighter"] 					 = {["name"] = "lighter", 			 	  	  	["label"] = "Lighter", 					["weight"] = 200, 		["type"] = "item", 		["image"] = "lighter.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Cigarette lighter"},
	["bong"] 						 = {["name"] = "bong", 			 	  	  		["label"] = "Bong", 					["weight"] = 200, 		["type"] = "item", 		["image"] = "bong.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Bong"},
	["ocb_paper"] 					 = {["name"] = "ocb_paper", 			 	  	["label"] = "Ocb Paper", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "ocb_paper.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ocb paper for rolling joints"},
	["og_kush_joint"] 				 = {["name"] = "og_kush_joint", 			 	["label"] = "Og Kush Joint", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "og_kush_joint.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Good joint"},
	["blue_dream_joint"] 			 = {["name"] = "blue_dream_joint", 			 	["label"] = "Blue Dream Joint", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "blue_dream_joint.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Good joint"},
	["purple_haze_joint"] 			 = {["name"] = "purple_haze_joint", 			["label"] = "Purple Haze Joint", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "purple_haze_joint.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Good joint"},
	["banana_kush_joint"] 			 = {["name"] = "banana_kush_joint", 			["label"] = "Banana Lush Joint", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "banana_kush_joint.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Good joint"},
	["og_kush_bag"] 				 = {["name"] = "og_kush_bag", 			 		["label"] = "Og Kush Bag", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "og_kush_bag.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Weed for packing"},
	["blue_dream_bag"] 			 	 = {["name"] = "blue_dream_bag", 			 	["label"] = "Blue Dream Bag", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "blue_dream_bag.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Weed for packing"},
	["purple_haze_bag"] 			 = {["name"] = "purple_haze_bag", 				["label"] = "Purple Haze Bag", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "purple_haze_bag.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Weed for packing"},
	["banana_kush_bag"] 			 = {["name"] = "banana_kush_bag", 				["label"] = "Banana Kush Bag", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "banana_kush_bag.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Weed for packing"},
	["og_kush_weed"] 				 = {["name"] = "og_kush_weed", 			 	  	["label"] = "Og Kush Weed 1G", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "og_kush_weed.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Weed for packing"},
	["blue_dream_weed"] 			 = {["name"] = "blue_dream_weed", 			 	["label"] = "Blue Dream Weed 1G", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "blue_dream_weed.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Weed for packing"},
	["banana_kush_weed"] 			 = {["name"] = "banana_kush_weed", 			 	["label"] = "Banana Kush Weed 1G", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "banana_kush_weed.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Weed for packing"},
	["purple_haze_weed"] 			 = {["name"] = "purple_haze_weed", 			 	["label"] = "Purple Haze Weed 1G", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "purple_haze_weed.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Weed for packing"},
	["dslrcamera"]= { ["name"] = "dslrcamera", ["label"] = "PD Camera", ["weight"] = 1000, ["type"] = "item", ["image"] = "pdcamera.png", ["unique"] = true, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "DSLR Camera, with cloud uplink.. cool right?"},
	['fentanyl'] = {['name'] = 'fentanyl', ['label'] = 'fentanyl', ['weight'] = 500, ['type'] = 'item', ['image'] = 'fentanyl.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['black_heroin'] = {['name'] = 'black_heroin', ['label'] = 'black heroin', ['weight'] = 500, ['type'] = 'item', ['image'] = 'heroin.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['backwoods_grape'] = {['name'] = 'backwoods_grape', ['label'] = 'backwoods grape', ['weight'] = 500, ['type'] = 'item', ['image'] = 'backwoods_grape.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['backwoods_honey'] = {['name'] = 'backwoods_honey', ['label'] = 'backwoods honey', ['weight'] = 500, ['type'] = 'item', ['image'] = 'backwoods_honey.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['backwoods_russian_cream'] = {['name'] = 'backwoods_russian_cream', ['label'] = 'backwoods_russian_cream', ['weight'] = 500, ['type'] = 'item', ['image'] = 'backwoods_russian_cream.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['blueberry_cruffin'] = {['name'] = 'blueberry_cruffin', ['label'] = 'blueberry_cruffin', ['weight'] = 500, ['type'] = 'item', ['image'] = 'blueberry_cruffin.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['cake_mix'] = {['name'] = 'cake_mix', ['label'] = 'cake_mix', ['weight'] = 500, ['type'] = 'item', ['image'] = 'cake_mix.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['cereal_milk'] = {['name'] = 'cereal_milk', ['label'] = 'cereal milk', ['weight'] = 500, ['type'] = 'item', ['image'] = 'cereal_milk', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['cheap_lighter'] = {['name'] = 'cheap_lighter', ['label'] = 'cheap lighter', ['weight'] = 500, ['type'] = 'item', ['image'] = 'cheap_lighter.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['cheetah_piss'] = {['name'] = 'cheetah_piss', ['label'] = 'cheetah piss', ['weight'] = 500, ['type'] = 'item', ['image'] = 'cheetah_piss.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['gary_payton'] = {['name'] = 'gary_payton', ['label'] = 'gary payton', ['weight'] = 500, ['type'] = 'item', ['image'] = 'gary_payton.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['gelatti'] = {['name'] = 'gelatti', ['label'] = 'gelatti', ['weight'] = 500, ['type'] = 'item', ['image'] = 'gelatti.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['georgia_pie'] = {['name'] = 'georgia_pie', ['label'] = 'georgia pie', ['weight'] = 500, ['type'] = 'item', ['image'] = 'georgia_pie.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['grabba_leaf'] = {['name'] = 'grabba_leaf', ['label'] = 'grabba leaf', ['weight'] = 500, ['type'] = 'item', ['image'] = 'grabba_leaf.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['jefe'] = {['name'] = 'jefe', ['label'] = 'jefe', ['weight'] = 500, ['type'] = 'item', ['image'] = 'jefe.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['snow_man'] = {['name'] = 'snow_man', ['label'] = 'snow man', ['weight'] = 500, ['type'] = 'item', ['image'] = 'snow_man.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['whitecherry_gelato'] = {['name'] = 'whitecherry_gelato', ['label'] = 'whitecherry gelato', ['weight'] = 500, ['type'] = 'item', ['image'] = 'whitecherry_gelato.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['white_runtz'] = {['name'] = 'white_runtz', ['label'] = 'white runtz', ['weight'] = 500, ['type'] = 'item', ['image'] = 'white_runtz.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['spice_pooch'] 			 = {['name'] = 'spice_pooch', 				['label'] = 'Spice Pooch', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'spice_pooch.png', 		['unique'] = false, 		['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, ['description'] = 'Your description here'},
	['coke_pooch'] 			 	 = {['name'] = 'coke_pooch', 				['label'] = 'Coke Pooch', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'coke_pooch.png', 		['unique'] = false, 		['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, ['description'] = 'Your description here'},
	['double_cup'] 			 	 = {['name'] = 'double_cup', 				['label'] = 'Double Cup', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'double_cup.png', 		['unique'] = false, 		['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, ['description'] = 'Your description here'},
	['heroin_shot'] 			 = {['name'] = 'heroin_shot', 				['label'] = 'Heroin Shot', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'heroin_shot.png', 		['unique'] = false, 		['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, ['description'] = 'Your description here'},
	['lean_bottle'] 			 = {['name'] = 'lean_bottle', 				['label'] = 'Lean Bottle', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'lean_bottle.png', 		['unique'] = false, 		['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, ['description'] = 'Your description here'},
	['meth_pooch'] 			 	 = {['name'] = 'meth_pooch', 				['label'] = 'Meth Pooch', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'meth_pooch.png', 		['unique'] = false, 		['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, ['description'] = 'Your description here'},
	['weed_pooch'] 			 	 = {['name'] = 'weed_pooch', 				['label'] = 'Weed Pooch', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'weed_pooch.png', 		['unique'] = false, 		['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, ['description'] = 'Your description here'},
	['xpills'] 			 	 	 = {['name'] = 'xpills', 					['label'] = 'X-Pills', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'xpills.png', 			['unique'] = false, 		['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, ['description'] = 'Your description here'},
	['bolonjez'] = {['name'] = 'bolonjez', ['label'] = 'Bolonjez', ['weight'] = 500, ['type'] = 'item', ['image'] = 'bolonjez.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['clams'] = {['name'] = 'clams', ['label'] = 'clams', ['weight'] = 500, ['type'] = 'item', ['image'] = 'clams.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['file'] = {['name'] = 'file', ['label'] = 'file', ['weight'] = 500, ['type'] = 'item', ['image'] = 'file.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['pastrmka'] = {['name'] = 'pastrmka', ['label'] = 'pastrmka', ['weight'] = 500, ['type'] = 'item', ['image'] = 'pastrmka.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['piletina'] = {['name'] = 'piletina', ['label'] = 'piletina', ['weight'] = 500, ['type'] = 'item', ['image'] = 'piletina.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['rizoto'] = {['name'] = 'rizoto', ['label'] = 'rizoto', ['weight'] = 500, ['type'] = 'item', ['image'] = 'rizoto.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['steak'] = {['name'] = 'steak', ['label'] = 'steak', ['weight'] = 500, ['type'] = 'item', ['image'] = 'steak.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['perk_30s'] = {['name'] = 'perk_30s', ['label'] = 'Perk 30s', ['weight'] = 500, ['type'] = 'item', ['image'] = '30s.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	['laptop2'] 			 = {['name'] = 'laptop2', 					['label'] = 'Laptop #2', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'laptop2.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['whiteslip'] 			 = {['name'] = 'whiteslip', 				['label'] = 'White Slip', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'whiteslip.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['stolencard'] 			 = {['name'] = 'stolencard', 				['label'] = 'Stolen Bankcard', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'stolencard.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['infousb'] 			 = {['name'] = 'infousb', 					['label'] = 'Information USB', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'infousb.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['forgedcheck'] 		 = {['name'] = 'forgedcheck', 				['label'] = 'Forged Check', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'forgedcheck.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['blankcard'] 			 = {['name'] = 'blankcard', 				['label'] = 'Blank Card', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'blankcard.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['clonedcard'] 			 = {['name'] = 'clonedcard', 				['label'] = 'Cloned Card', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'clonecard.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['printer'] 			 = {['name'] = 'printer', 					['label'] = 'Printer', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'printer.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['skimmer'] 			 = {['name'] = 'skimmer', 					['label'] = 'Skimmer', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'skimmer.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['generator'] 			 = {['name'] = 'generator', 				['label'] = 'Generator', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'generator.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['xanax'] 			 = {['name'] = 'xanax', 				['label'] = 'xanax', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'xanax.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['baby_food'] 			 = {['name'] = 'baby_food', 				['label'] = 'baby food', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'baby_food.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['baby_medikit'] 			 = {['name'] = 'baby_medikit', 				['label'] = 'baby medikit', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'baby_medikit.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['baby_water'] 			 = {['name'] = 'baby_water', 				['label'] = 'baby water', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'baby_water.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['the_blue_reaper'] = {['name'] = 'the_blue_reaper', ['label'] = 'The Blue Reaper', ['weight'] = 500, ['type'] = 'item', ['image'] = 'the_blue_reaper.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = false, ['combinable'] = nil},
	["weed_skunk_cbd_crop"] 	     = {["name"] = "weed_skunk_cbd_crop", 		["label"] = "CBD Skunk Crop", 			["weight"] = 1200, 		["type"] = "item", 		["image"] = "weed_skunk_crop.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A crop of CBD Skunk!"},
	["weed_og-kush_cbd_crop"] 		 = {["name"] = "weed_og-kush_cbd_crop", 	["label"] = "CBD OG Kush Crop", 		["weight"] = 1200, 		["type"] = "item", 		["image"] = "weed_og-kush_crop.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A crop of CBD OG Kush"},
	["weed_white-widow_cbd_crop"]    = {["name"] = "weed_white-widow_cbd_crop", ["label"] = "CBD White Widow Crop", 	["weight"] = 1200, 		["type"] = "item", 		["image"] = "weed_white-widow_crop.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A crop of CBD White Widow"},
	["weed_ak47_cbd_crop"] 			 = {["name"] = "weed_ak47_cbd_crop", 	    ["label"] = "CBD AK 47 Crop", 			["weight"] = 1200, 		["type"] = "item", 		["image"] = "weed_ak47_crop.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A crop of CBD AK47!"},
	["weed_skunk_cbd"] 				 = {["name"] = "weed_skunk_cbd", 			["label"] = "CBD Skunk 2g", 			["weight"] = 5, 		["type"] = "item", 		["image"] = "weed_skunk_cbd.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A 2g bag of CBD Skunk!"},
	["weed_og-kush_cbd"] 		     = {["name"] = "weed_og-kush_cbd", 			["label"] = "CBD OGKush 2g", 			["weight"] = 5, 		["type"] = "item", 		["image"] = "weed_og-kush_cbd.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A 2g bag of CBD OG Kush!"},
	["weed_white-widow_cbd"] 		 = {["name"] = "weed_white-widow_cbd", 	    ["label"] = "CBD White Widow 2g", 		["weight"] = 5, 		["type"] = "item", 		["image"] = "weed_white-widow_cbd.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A 2g bag of CBD White Widow!"},
	["weed_ak47_cbd"] 				 = {["name"] = "weed_ak47_cbd", 			["label"] = "CBD AK47 2g", 				["weight"] = 5, 		["type"] = "item", 		["image"] = "weed_ak47_cbd.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "A 2g bag of CBD 2g AK47!"},
	["weed_skunk_cbd_joint"] 	     = {["name"] = "weed_skunk_cbd_joint", 		["label"] = "CBD Skunk Joint", 			["weight"] = 1, 		["type"] = "item", 		["image"] = "weed_skunk_cbd_joint.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "Light up that skunk son!"},
	["weed_og-kush_cbd_joint"] 		 = {["name"] = "weed_og-kush_cbd_joint", 	["label"] = "CBD OG Kush Joint", 		["weight"] = 1, 		["type"] = "item", 		["image"] = "weed_og-kush_cbd_joint.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "Light up that og kush son!"},
	["weed_white-widow_cbd_joint"] 	 = {["name"] = "weed_white-widow_cbd_joint",["label"] = "CBD White Widow Joint", 	["weight"] = 1, 		["type"] = "item", 		["image"] = "weed_white-widow_cbd_joint.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "Light up that white widow son!"},
	["weed_ak47_cbd_joint"] 		 = {["name"] = "weed_ak47_cbd_joint", 		["label"] = "CBD AK 47 Joint", 			["weight"] = 1, 		["type"] = "item", 		["image"] = "weed_ak47_cbd_joint.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "Light up that ak47 son!"},
	["drug_scales"] 		 	     = {["name"] = "drug_scales", 				["label"] = "Scale", 					["weight"] = 1500, 	    ["type"] = "item", 		["image"] = "drug_scales.png", 					["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   		["combinable"] = nil,   ["description"] = "This is not what it looks like"},
	["empty_weed_bag"] 				 = {["name"] = "empty_weed_bag", 			["label"] = "Drug Baggies", 			["weight"] = 1, 		["type"] = "item", 		["image"] = "weed-empty-bag.png", 		        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   		["combinable"] = nil,   ["description"] = "A small empty bag"},
	["weed_nutrition"] 				 = {["name"] = "weed_nutrition", 			["label"] = "Plant Fertilizer", 		["weight"] = 500, 		["type"] = "item", 		["image"] = "weed_nutrition.png", 		        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	  	    ["combinable"] = nil,   ["description"] = "Get that big bug energy!"},
	["weed_water"] 				     = {["name"] = "weed_water", 			    ["label"] = "Distilled Water", 		    ["weight"] = 500, 		["type"] = "item", 		["image"] = "weed_water.png", 		            ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   		["combinable"] = nil,   ["description"] = "Distilled water for your plants"},
	["weed_pot"] 				     = {["name"] = "weed_pot", 			        ["label"] = "Plant Pot", 		        ["weight"] = 100, 		["type"] = "item", 		["image"] = "weed_pot.png", 		            ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   		["combinable"] = nil,   ["description"] = "A simple plant pot for all your planting needs!"},
	['drug_shears'] 			     = {['name'] = 'drug_shears', 		        ['label'] = 'Trimming Shears', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'drug_shears.png', 					['unique'] = false,    	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'A set of high quality trimming shears.'},
	['chain_v']  					= {['name'] = 'chain_v', 				    ['label'] = 'Vlone | Silver/Gold',  	  		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'chain_v.png',  			['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_v1']  					= {['name'] = 'chain_v1', 				  	['label'] = 'Vlone | Gold/Silver',  	  		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'chain_v.png',  			['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_v2']  					= {['name'] = 'chain_v2', 				  	['label'] = 'Vlone | Silver/Black',  	  		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'chain_v.png',  			['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_bdb']  					= {['name'] = 'chain_bdb', 				  	['label'] = 'BDB Chain',  		          		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'billiondollarbaby.png',  	['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_cp1']  					= {['name'] = 'chain_cp1', 				  	['label'] = 'Cross Chain',  	          		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'crosschain1.png',  		['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_cp2']  					= {['name'] = 'chain_cp2', 				  	['label'] = 'Cross Chain',  	          		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'crosschain2.png',  		['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_skull']  				= {['name'] = 'chain_skull', 			  	['label'] = 'Iced out Skull',  	          		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'skull1.png',  				['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_skull2']  				= {['name'] = 'chain_skull2', 				['label'] = 'Iced out Skull',  	          		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'skull2.png',  				['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_skull3']  				= {['name'] = 'chain_skull3', 				['label'] = 'Iced out Skull',  	          		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'skull3.png',  				['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_skull4']  				= {['name'] = 'chain_skull4', 				['label'] = 'Iced out Skull',  	          		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'skull4.png',  				['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_skull5']  				= {['name'] = 'chain_skull5', 				['label'] = 'Iced out Skull',  	          		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'skull5.png',  				['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_skull6']  				= {['name'] = 'chain_skull6', 				['label'] = 'Iced out Skull',  	          		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'skull6.png',  				['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_skull7']  				= {['name'] = 'chain_skull7', 				['label'] = 'Iced out Skull',         	  		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'skull7.png',  				['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_nocap']  				= {['name'] = 'chain_nocap', 				['label'] = 'Iced out NOCAP',  	       	  		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'chain_nocap.png',  		['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_snake']  				= {['name'] = 'chain_snake', 		  		['label'] = 'Iced out Snake Bite',        		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'trustnoone.png',  			['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_link']  				= {['name'] = 'chain_link', 			  	['label'] = 'Iced out linked Chain',      		['weight'] = 1,  	  	['type'] = 'item',  	['image'] = 'chain_link.png',  			['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_au1']  					= {['name'] = 'chain_au1', 					['label'] = 'Among Us | All Gold ',		  		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'amongus1.png',  			['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_au2']  					= {['name'] = 'chain_au2', 					['label'] = 'Among Us | Red/Gold',		  		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'amongus2.png',  			['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_au3']  					= {['name'] = 'chain_au3', 					['label'] = 'Among Us | Blue/Gold',		  		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'amongus3.png',  			['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_au4']  					= {['name'] = 'chain_au4', 					['label'] = 'Among Us | White/Gold',	  		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'amongus4.png',  			['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_au5']  					= {['name'] = 'chain_au5', 					['label'] = 'Among Us | Green/Gold',	  		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'amongus5.png',  			['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_au6']  					= {['name'] = 'chain_au6', 					['label'] = 'Among Us | Black/Gold',	  		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'amongus6.png',  			['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_au7']  					= {['name'] = 'chain_au7', 					['label'] = 'Among Us | Purple/Gold',	  		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'amongus7.png',  			['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_au8']  					= {['name'] = 'chain_au8', 					['label'] = 'Among Us | Cyan/Gold',		  		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'amongus8.png',  			['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_au9']  					= {['name'] = 'chain_au9', 					['label'] = 'Among Us | Orange/Gold',	  		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'amongus9.png',  			['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_au10']  				= {['name'] = 'chain_au10', 				['label'] = 'Among Us | Black/Diamond',	  		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'amongus10.png',  			['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_au11']  				= {['name'] = 'chain_au11', 				['label'] = 'Among Us | Gold/Diamond',	  		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'amongus11.png',  			['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_au12']  				= {['name'] = 'chain_au12', 				['label'] = 'Among Us | Red/Diamond',	  		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'amongus12.png',  			['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_au13']  				= {['name'] = 'chain_au13', 				['label'] = 'Among Us | Green/Diamond',	  		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'amongus13.png',  			['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_au14']  				= {['name'] = 'chain_au14', 				['label'] = 'Among Us | Pink/Diamond',	  		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'amongus14.png',  			['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_au15']  				= {['name'] = 'chain_au15', 				['label'] = 'Among Us | Blue/Diamond',	  		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'amongus15.png',  			['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_au16']  				= {['name'] = 'chain_au16', 				['label'] = 'Among Us | White/Diamond',	  		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'amongus16.png',  			['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['cts_chain']  					= {['name'] = 'cts_chain', 				    ['label'] = 'CTS Chain',  	  		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'ibox.png',  			['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['grizzly_chain']  					= {['name'] = 'grizzly_chain', 				  	['label'] = 'Grizzly Chain',  	  		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'ibox.png',  			['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_83rd']  					= {['name'] = 'chain_83rd', 				  	['label'] = '83rd Chain',  	  		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'ibox.png',  			['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['db_chain']  					= {['name'] = 'db_chain', 				  	['label'] = 'DB Chain',  		          		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'ibox.png',  	['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['bmf_silver_chain']  					= {['name'] = 'bmf_silver_chain', 				  	['label'] = 'BMF Silver Chain',  	          		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'ibox.png',  		['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['bmf_gold_chain']  					= {['name'] = 'bmf_gold_chain', 				  	['label'] = 'BMF Gold Chain',  	          		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'ibox.png',  		['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['bd_chain']  				= {['name'] = 'bd_chain', 			  	['label'] = 'BD Chain',  	          		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'ibox.png',  				['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['choppa_chain']  				= {['name'] = 'choppa_chain', 				['label'] = 'Choppa Chain',  	          		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'ibox.png',  				['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['sg_chain']  				= {['name'] = 'sg_chain', 				['label'] = 'SG Chain',  	          		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'ibox.png',  				['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['sos_chain']  				= {['name'] = 'sos_chain', 				['label'] = 'SOS Chain',  	          		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'ibox.png',  				['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['chain_57']  				= {['name'] = 'chain_57', 				['label'] = '57 Chain',  	          		['weight'] = 1,  		['type'] = 'item',  	['image'] = 'ibox.png',  				['unique'] = true,  	['useable'] = true,  	['shouldClose'] = true,  	['combinable'] = nil, 	['description'] = 'Custom Gang Chain'},
	['latex_glove'] 				 = {['name'] = 'latex_glove', 			  	['label'] = 'Latex Glove', 		['weight'] = 0, 		['type'] = 'item', 		['image'] = 'latex_glove.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'Gloves For Wigs'},
	['hair_kit'] 				 = {['name'] = 'hair_kit', 			  	  	['label'] = 'Hair Kit', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'hair_kit.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'Hair Kit For Wigs'},
	['bob_wig'] 			 	 	 = {['name'] = 'bob_wig', 			  		['label'] = 'bob Wig', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'short_wig.png', 			['unique'] = true, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'bob Wig :)'},
	['long_curly_wig'] 			 		 = {['name'] = 'long_curly_wig', 						['label'] = 'long Curly Wig', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'long_wig.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Long Wig'},
	
	--Repair Parts
	["newoil"] =            {["name"] = "newoil",           ["label"] = "Car Oil",				["weight"] = 0, ["type"] = "item",  ["image"] = "caroil.png",           ["unique"] = false, ["useable"] = false,["shouldClose"] = false,["description"] = ""},
	["sparkplugs"]=         {["name"] = "sparkplugs",       ["label"] = "Spark Plugs",			["weight"] = 0, ["type"] = "item",  ["image"] = "sparkplugs.png",       ["unique"] = false, ["useable"] = false,["shouldClose"] = false,["description"] = ""},
	["carbattery"]=         {["name"] = "carbattery",       ["label"] = "Car Battery",			["weight"] = 0, ["type"] = "item",  ["image"] = "carbattery.png",       ["unique"] = false, ["useable"] = false,["shouldClose"] = false,["description"] = ""},
	["axleparts"]=          {["name"] = "axleparts",        ["label"] = "Axle Parts",			["weight"] = 0, ["type"] = "item",  ["image"] = "axleparts.png",        ["unique"] = false, ["useable"] = false,["shouldClose"] = false,["description"] = ""},
	["sparetire"]=          {["name"] = "sparetire",        ["label"] = "Spare Tire",			["weight"] = 0, ["type"] = "item",  ["image"] = "sparetire.png",        ["unique"] = true,  ["useable"] = false,["shouldClose"] = false,["description"] = ""},
	
	["backpack1"] = {
		["name"] = "backpack1",
		["label"] = "Backpack 1",
		["weight"] = 7500,
		["type"] = "item",
		["image"] = "backpack_girl.png",
		["unique"] = true,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Backpack"
   },
   ["backpack2"] = {
		["name"] = "backpack2",
		["label"] = "Backpack 2",
		["weight"] = 15000,
		["type"] = "item",
		["image"] = "backpack_boy.png",
		["unique"] = true,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Backpack"
   },
   ["briefcase"] = {
		["name"] = "briefcase",
		["label"] = "Briefcase",
		["weight"] = 10000,
		["type"] = "item",
		["image"] = "briefcase.png",
		["unique"] = true,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Briefcase"
   },
   ["paramedicbag"] = {
		["name"] = "paramedicbag",
		["label"] = "Paramedic bag",
		["weight"] = 5000,
		["type"] = "item",
		["image"] = "paramedic_bag.png",
		["unique"] = true,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Paramedic bag"
   },
   
   -- new item
   ["briefcaselockpicker"] = {
		["name"] = "briefcaselockpicker",
		["label"] = "Briefcase Lockpicker",
		["weight"] = 500,
		["type"] = "item",
		["image"] = "lockpick.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Briefcase Lockpicker"
   },
-- Vanilla unicorn
['vodka'] = {['name'] = 'vodka', ['label'] = 'Vodka', ['weight'] = 1, ['type'] = 'item', ['image'] = 'vodka.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Vodka'},
['cointreau'] = {['name'] = 'cointreau', ['label'] = 'Cointreau', ['weight'] = 1, ['type'] = 'item', ['image'] = 'cointreau.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Cointreau'},
['cranberry_juice'] = {['name'] = 'cranberry_juice', ['label'] = 'Cranberry juice', ['weight'] = 1, ['type'] = 'item', ['image'] = 'cranberry_juice.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Cranberry juice'},
['fresh_mix'] = {['name'] = 'fresh_mix', ['label'] = 'Fresh sour mix', ['weight'] = 1, ['type'] = 'item', ['image'] = 'fresh_mix.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Fresh sour mix'},
['mint'] = {['name'] = 'mint', ['label'] = 'Mint', ['weight'] = 1, ['type'] = 'item', ['image'] = 'mint.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Mint'},
['lime'] = {['name'] = 'lime', ['label'] = 'Lime', ['weight'] = 1, ['type'] = 'item', ['image'] = 'lime.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Lime'},
['sugar'] = {['name'] = 'sugar', ['label'] = 'Sugar', ['weight'] = 1, ['type'] = 'item', ['image'] = 'sugar.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Sugar'},
['ice'] = {['name'] = 'ice', ['label'] = 'Ice', ['weight'] = 1, ['type'] = 'item', ['image'] = 'ice.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Ice'},
['white_rum'] = {['name'] = 'white_rum', ['label'] = 'White rum', ['weight'] = 1, ['type'] = 'item', ['image'] = 'white_rum.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'White rum'},
['club_soda'] = {['name'] = 'club_soda', ['label'] = 'Club soda', ['weight'] = 1, ['type'] = 'item', ['image'] = 'club_soda.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Club soda'},
['light_rum'] = {['name'] = 'light_rum', ['label'] = 'Light rum', ['weight'] = 1, ['type'] = 'item', ['image'] = 'light_rum.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Light rum'},
['dark_rum'] = {['name'] = 'dark_rum', ['label'] = 'Dark rum', ['weight'] = 1, ['type'] = 'item', ['image'] = 'dark_rum.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Dark rum'},
['gold_rum'] = {['name'] = 'gold_rum', ['label'] = 'Gold rum', ['weight'] = 1, ['type'] = 'item', ['image'] = 'gold_rum.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Gold rum'},
['curacao'] = {['name'] = 'curacao', ['label'] = 'Orange Curacao liqeur', ['weight'] = 1, ['type'] = 'item', ['image'] = 'curacao.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Orange Curacao liqeur'},
['syrup'] = {['name'] = 'syrup', ['label'] = 'Orgeat syrup', ['weight'] = 1, ['type'] = 'item', ['image'] = 'syrup.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Orgeat syrup'},
['water'] = {['name'] = 'water', ['label'] = 'Water', ['weight'] = 1, ['type'] = 'item', ['image'] = 'water.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Water'},
['bourbon'] = {['name'] = 'bourbon', ['label'] = 'Bourbon', ['weight'] = 1, ['type'] = 'item', ['image'] = 'bourbon.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Bourbon'},
['cachaca'] = {['name'] = 'cachaca', ['label'] = 'Cachaca', ['weight'] = 1, ['type'] = 'item', ['image'] = 'cachaca.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Cachaca'},
['limeade'] = {['name'] = 'limeade', ['label'] = 'Limeadge', ['weight'] = 1, ['type'] = 'item', ['image'] = 'limeade.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Limeadge'},
['tequila'] = {['name'] = 'tequila', ['label'] = 'Tequila', ['weight'] = 1, ['type'] = 'item', ['image'] = 'tequila.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Tequila'},
['triple_sec'] = {['name'] = 'triple_sec', ['label'] = 'Triple sec', ['weight'] = 1, ['type'] = 'item', ['image'] = 'triple_sec.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Triple sec'},
['coconut_milk'] = {['name'] = 'coconut_milk', ['label'] = 'Coconut milk', ['weight'] = 1, ['type'] = 'item', ['image'] = 'coconut_milk.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Coconut milk'},
['pineapple_juice'] = {['name'] = 'pineapple_juice', ['label'] = 'Pineapple juice', ['weight'] = 1, ['type'] = 'item', ['image'] = 'pineapple_juice.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Pineapple juice'},
['cosmopolitan'] = {['name'] = 'cosmopolitan', ['label'] = 'Cosmopolitan', ['weight'] = 2, ['type'] = 'item', ['image'] = 'cosmopolitan.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Cosmopolitan'},
['mojito'] = {['name'] = 'mojito', ['label'] = 'Mojito', ['weight'] = 2, ['type'] = 'item', ['image'] = 'mojito.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Mojito'},
['mai_tai'] = {['name'] = 'mai_tai', ['label'] = 'Mai Tai', ['weight'] = 2, ['type'] = 'item', ['image'] = 'mai_tai.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Mai Tai'},
['mint_julep'] = {['name'] = 'mint_julep', ['label'] = 'Mint Julep', ['weight'] = 2, ['type'] = 'item', ['image'] = 'mint_julep.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Mint Julep'},
['caipirinha'] = {['name'] = 'caipirinha', ['label'] = 'Caipirinha', ['weight'] = 2, ['type'] = 'item', ['image'] = 'caipirinha.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Caipirinha'},
['margarita'] = {['name'] = 'margarita', ['label'] = 'Margarita', ['weight'] = 2, ['type'] = 'item', ['image'] = 'margarita.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Margarita'},
['pina_colada'] = {['name'] = 'pina_colada', ['label'] = 'Pina Colada', ['weight'] = 2, ['type'] = 'item', ['image'] = 'pina_colada.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false, ['combinable'] = nil, ['description'] = 'Pina Colada'},
["scrambled_egg"] 				= {["name"] = "scrambled_egg",  	     	 ["label"] = "scrambled egg",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "scrambled_egg.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "changeme", ['hunger'] = math.random(20, 30) },
["alfredomontamore"] 				= {["name"] = "alfredomontamore",				 ["label"] = "alfredo montamore",			["weight"] = 200,		["type"] = "item",		["image"] = "alfredomontamore.png",				["unique"] = false, 	["useable"] = true,		["shouldClose"] = true,	    ["combinable"] = nil,	["description"] = "changeme", ['hunger'] = math.random(20, 30) },
["sirloin_steak"] 				= {["name"] = "sirloin_steak",		 ["label"] = "Sirloin steak",			["weight"] = 200,		["type"] = "item",		["image"] = "sirloin_steak.png",		["unique"] = false, 	["useable"] = true,		["shouldClose"] = true,	    ["combinable"] = nil,	["description"] = "Sirloin steak" },
["chicken_fajita"] 				    	= {["name"] = "chicken_fajita", 				 ["label"] = "chicken_fajita", 	     			["weight"] = 200, 		["type"] = "item", 		["image"] = "chicken_fajita.png", 			["unique"] = false,   	["useable"] = true,   	["shouldClose"] = true,     ["combinable"] = nil,   ["description"] = "Steak" },
["salad"] 				    	= {["name"] = "salad", 				 ["label"] = "Salad", 	     			["weight"] = 200, 		["type"] = "item", 		["image"] = "salad3.png", 			["unique"] = false,   	["useable"] = true,    	["shouldClose"] = true,     ["combinable"] = nil,   ["description"] = "Salad" },
["cannoli"] 				    	= {["name"] = "cannoli", 				 ["label"] = "cannoli", 	     			["weight"] = 200, 		["type"] = "item", 		["image"] = "cannoli.png", 			["unique"] = false,   	["useable"] = true,    	["shouldClose"] = true,     ["combinable"] = nil,   ["description"] = "Salad" },
["italian_bmt"] 				    	= {["name"] = "italian_bmt", 				 ["label"] = "italian_bmt", 	     			["weight"] = 200, 		["type"] = "item", 		["image"] = "italian_bmt.png", 			["unique"] = false,   	["useable"] = true,    	["shouldClose"] = true,     ["combinable"] = nil,   ["description"] = "Salad" },
["pnapollitano"] 				    	= {["name"] = "pnapollitano", 				 ["label"] = "pnapollitano", 	     			["weight"] = 200, 		["type"] = "item", 		["image"] = "pnapollitano.png", 			["unique"] = false,   	["useable"] = true,    	["shouldClose"] = true,     ["combinable"] = nil,   ["description"] = "Salad" },
["sausageroll"] 				    	= {["name"] = "sausageroll", 				 ["label"] = "sausageroll", 	     			["weight"] = 200, 		["type"] = "item", 		["image"] = "sausageroll.png", 			["unique"] = false,   	["useable"] = true,    	["shouldClose"] = true,     ["combinable"] = nil,   ["description"] = "Salad" },
["spaghettimeatballs"] 				    	= {["name"] = "spaghettimeatballs", 				 ["label"] = "spaghettimeatballs", 	     			["weight"] = 200, 		["type"] = "item", 		["image"] = "spaghettimeatballs.png", 			["unique"] = false,   	["useable"] = true,    	["shouldClose"] = true,     ["combinable"] = nil,   ["description"] = "Salad" },

["syphoningkit"]				 = {["name"] = "syphoningkit", 					["label"] = "Syphoning Kit", 			["weight"] = 5000, 		["type"] = "item", 		["image"] = "syphoningkit.png", 		["unique"] = true, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A kit made to siphon gasoline from vehicles."},
	["jerrycan"]				 	 = {["name"] = "jerrycan", 						["label"] = "Jerry Can", 				["weight"] = 15000, 	["type"] = "item", 		["image"] = "jerrycan.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A Jerry Can made to hold gasoline."},

['classic_phone'] 			 	 = {['name'] = 'classic_phone', 			  	['label'] = 'Classic Phone', 			['weight'] = 700, 		['type'] = 'item', 		['image'] = 'classic_phone.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'},
	['black_phone'] 			 	 = {['name'] = 'black_phone', 			  	    ['label'] = 'Black Phone', 			    ['weight'] = 700, 		['type'] = 'item', 		['image'] = 'black_phone.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'},
	['blue_phone'] 			 	     = {['name'] = 'blue_phone', 			  	    ['label'] = 'Blue Phone', 			    ['weight'] = 700, 		['type'] = 'item', 		['image'] = 'blue_phone.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'},
	['gold_phone'] 			 	     = {['name'] = 'gold_phone', 			        ['label'] = 'Gold Phone', 			    ['weight'] = 700, 		['type'] = 'item', 		['image'] = 'gold_phone.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'},
	['red_phone'] 			 	     = {['name'] = 'red_phone', 			  	    ['label'] = 'Red Phone', 			    ['weight'] = 700, 		['type'] = 'item', 		['image'] = 'red_phone.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'},
	['green_phone'] 			 	 = {['name'] = 'green_phone', 			  	    ['label'] = 'Green Phone', 			    ['weight'] = 700, 		['type'] = 'item', 		['image'] = 'green_phone.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'},
	['greenlight_phone'] 			 = {['name'] = 'greenlight_phone', 			  	['label'] = 'Green Light Phone', 	    ['weight'] = 700, 		['type'] = 'item', 		['image'] = 'greenlight_phone.png', 	['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'},
	['pink_phone'] 			 	     = {['name'] = 'pink_phone', 			  	    ['label'] = 'Pink Phone', 	            ['weight'] = 700, 		['type'] = 'item', 		['image'] = 'pink_phone.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'},
	['white_phone'] 			 	 = {['name'] = 'white_phone', 			  	    ['label'] = 'White Phone', 			    ['weight'] = 700, 		['type'] = 'item', 		['image'] = 'white_phone.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'},
	
	['wet_phone'] 			         = {['name'] = 'wet_phone', 			        ['label'] = 'Wet Phone', 	            ['weight'] = 700, 		['type'] = 'item', 		['image'] = 'wet_classic_phone.png',    ['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Did you really think that swimming in the ocean with your phone was a good idea?'},
	['wet_classic_phone'] 			 = {['name'] = 'wet_classic_phone', 			['label'] = 'Wet Classic Phone', 	    ['weight'] = 700, 		['type'] = 'item', 		['image'] = 'wet_classic_phone.png',    ['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Did you really think that swimming in the ocean with your phone was a good idea?'},
	['wet_black_phone'] 			 = {['name'] = 'wet_black_phone', 			  	['label'] = 'Wet Black Phone', 			['weight'] = 700, 		['type'] = 'item', 		['image'] = 'wet_black_phone.png', 	    ['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Did you really think that swimming in the ocean with your phone was a good idea?'},
	['wet_blue_phone'] 			 	 = {['name'] = 'wet_blue_phone', 			  	['label'] = 'Wet Blue Phone', 			['weight'] = 700, 		['type'] = 'item', 		['image'] = 'wet_blue_phone.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Did you really think that swimming in the ocean with your phone was a good idea?'},
	['wet_gold_phone'] 			 	 = {['name'] = 'wet_gold_phone', 			    ['label'] = 'Wet Gold Phone', 			['weight'] = 700, 		['type'] = 'item', 		['image'] = 'wet_gold_phone.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Did you really think that swimming in the ocean with your phone was a good idea?'},
	['wet_red_phone'] 			 	 = {['name'] = 'wet_red_phone', 			  	['label'] = 'Wet Red Phone', 			['weight'] = 700, 		['type'] = 'item', 		['image'] = 'wet_red_phone.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Did you really think that swimming in the ocean with your phone was a good idea?'},
	['wet_green_phone'] 			 = {['name'] = 'wet_green_phone', 			  	['label'] = 'Wet Green Phone', 			['weight'] = 700, 		['type'] = 'item', 		['image'] = 'wet_green_phone.png', 	    ['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'},
	['wet_greenlight_phone'] 	     = {['name'] = 'wet_greenlight_phone', 			['label'] = 'Wet Green Light Phone', 	['weight'] = 700, 		['type'] = 'item', 		['image'] = 'wet_greenlight_phone.png', ['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'},
	['wet_pink_phone'] 			 	 = {['name'] = 'wet_pink_phone', 			  	['label'] = 'Wet Pink Phone', 	        ['weight'] = 700, 		['type'] = 'item', 		['image'] = 'wet_pink_phone.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'},
	['wet_white_phone'] 			 = {['name'] = 'wet_white_phone', 			  	['label'] = 'Wet White Phone', 			['weight'] = 700, 		['type'] = 'item', 		['image'] = 'wet_white_phone.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'They say that Quasar Smartphone is the same as an iPhone, what do you think?'},
	
	['phone_hack'] 			 	     = {['name'] = 'phone_hack', 			  	    ['label'] = 'Phone Hack', 			    ['weight'] = 300, 		['type'] = 'item', 		['image'] = 'phone_hack.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'With this chip, you can access hidden areas of Discord.'},
	['phone_module'] 			 	 = {['name'] = 'phone_module', 			  	    ['label'] = 'Phone Module', 			['weight'] = 300, 		['type'] = 'item', 		['image'] = 'phone_module.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'It seems that we can fix a wet phone with this module, interesting.'},
	['powerbank'] 			 	     = {['name'] = 'powerbank', 			  	    ['label'] = 'Power Bank', 			    ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'powerbank.png', 		    ['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Incredible portable charger!'},



	["pigeonmeat"] = {
		["name"] = "pigeonmeat",
		["label"] = "Pigeon Meat",
		["type"] = "item", 
		["image"] = "pigeonmeat.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Delicious pigeon meat for your culinary adventures."
	},
	
	["pigeonfeather"] = {
		["name"] = "pigeonfeather",
		["label"] = "Pigeon Feather",
		["type"] = "item",
		["image"] = "pigeonfeather.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "A soft and lightweight feather from a pigeon." 
	},
	
	["crowmeat"] = {
		["name"] = "crowmeat",
		["label"] = "Crow Meat",
		["type"] = "item",
		["image"] = "crowmeat.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Tasty crow meat, perfect for daring gourmets."
	},
	
	["crowfeather"] = {
		["name"] = "crowfeather",
		["label"] = "Crow Feather",
		["type"] = "item",
		["image"] = "crowfeather.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "A sleek and dark feather from a crow."
	},
	
	["seagullmeat"] = {
		["name"] = "seagullmeat",
		["label"] = "Seagull Meat",
		["type"] = "item",
		["image"] = "seagullmeat.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Savory seagull meat, a delicacy among fishermen."
	},
	
	["seagullfeather"] = {
		["name"] = "seagullfeather",
		["label"] = "Seagull Feather",  
		["type"] = "item",
		["image"] = "seagullfeather.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "A graceful and light feather from a seagull."
	},
	
	["cormorantmeat"] = {
		["name"] = "cormorantmeat",
		["label"] = "Cormorant Meat",
		["type"] = "item",
		["image"] = "cormorantmeat.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Meaty cormorant meat, a rare find for adventurous eaters."
	},
	
	["cormorantbeak"] = {
		["name"] = "cormorantbeak",
		["label"] = "Cormorant Beak",
		["type"] = "item",
		["image"] = "cormorantbeak.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "A sturdy and pointed beak from a cormorant."
	},
	
	["deermeat"] = {
		["name"] = "deermeat",
		["label"] = "Deer Meat",
		["type"] = "item",
		["image"] = "deermeat.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Succulent deer meat, a favorite among hunters."
	},
	
	["deerhorn"] = {
		["name"] = "deerhorn",
		["label"] = "Deer Horn",
		["type"] = "item",
		["image"] = "deerhorn.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "A majestic horn from a deer, prized for its beauty."
	},
	
	["rabbitmeat"] = {
		["name"] = "rabbitmeat",
		["label"] = "Rabbit Meat",
		["type"] = "item",
		["image"] = "rabbitmeat.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Tender rabbit meat, perfect for stews and roasts."
	},
	
	["rabbitskin"] = {
		["name"] = "rabbitskin",
		["label"] = "Rabbit Skin",
		["type"] = "item",
		["image"] = "rabbitskin.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "A soft and supple skin from a rabbit, ideal for crafting."
	},
	
	["ratmeat"] = {
		["name"] = "ratmeat",
		["label"] = "Rat Meat",
		["type"] = "item",
		["image"] = "ratmeat.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Edible rat meat, a survivalist's choice in desperate times."
	},
	
	["pigmeat"] = {
		["name"] = "pigmeat",
		["label"] = "Pig Meat",
		["type"] = "item",
		["image"] = "pigmeat.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Juicy pig meat, a staple in many hearty meals."
	},
	
	["pigskin"] = {
		["name"] = "pigskin",
		["label"] = "Pig Skin",
		["type"] = "item",
		["image"] = "pigskin.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Thick and durable pig skin, useful for crafting leather goods."
	},
	
	["coyotemeat"] = {
		["name"] = "coyotemeat",
		["label"] = "Coyote Meat",
		["type"] = "item",
		["image"] = "coyotemeat.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Lean and gamey coyote meat, favored by wilderness enthusiasts."
	},
	
	["coyoteskin"] = {
		["name"] = "coyoteskin",
		["label"] = "Coyote Skin",
		["type"] = "item",
		["image"] = "coyoteskin.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Tough and weather-resistant coyote skin, perfect for outdoor gear."
	},
	
	["coguarmeat"] = {
		["name"] = "coguarmeat", 
		["label"] = "Cougar Meat",
		["type"] = "item",
		["image"] = "coguarmeat.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Exotic cougar meat, a delicacy for adventurous palates."
	},
	
	["coguarskin"] = {
		["name"] = "coguarskin",
		["label"] = "Cougar Skin",
		["type"] = "item",
		["image"] = "coguarskin.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Supple cougar skin, highly valued in the fashion industry."
	},
	
	["boarmeat"] = {
		["name"] = "boarmeat",
		["label"] = "Boar Meat",
		["type"] = "item",
		["image"] = "boarmeat.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Hearty boar meat, a popular choice among hunters and chefs."
	},
	
	["boarskin"] = {
		["name"] = "boarskin",
		["label"] = "Boar Skin",
		["type"] = "item", 
		["image"] = "boarskin.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Tough boar skin, excellent for crafting rugged goods."
	},
	
	["snakemeat"] = {
		["name"] = "snakemeat",
		["label"] = "Snake Meat",
		["type"] = "item",
		["image"] = "snakemeat.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Savory snake meat, a delicacy in some cultures."
	},
	
	["boarhorn"] = {
		["name"] = "boarhorn",
		["label"] = "Boar Horn",
		["type"] = "item",
		["image"] = "boarhorn.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "A large and impressive horn from a boar."
	},
	
	["snakeskin"] = {
		["name"] = "snakeskin",
		["label"] = "Snake Skin",
		["type"] = "item",
		["image"] = "snakeskin.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Smooth and patterned snake skin, used for various crafts."
	},
	
	["hawkmeat"] = {
		["name"] = "hawkmeat",
		["label"] = "Hawk Meat",
		["type"] = "item",
		["image"] = "hawkmeat.png", 
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Lean and gamey hawk meat, a rare delicacy among hunters."
	},
	
	["hawkskin"] = {
		["name"] = "hawkskin",
		["label"] = "Hawk Skin",
		["type"] = "item",
		["image"] = "hawkskin.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Beautiful hawk skin, prized for its unique markings."
	},
	
	["hawkpeak"] = {
		["name"] = "hawkpeak",
		["label"] = "Hawk Peak",
		["type"] = "item",
		["image"] = "hawkpeak.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "A majestic feather from a hawk's peak, a symbol of freedom."
	},


		--Jim-Mechanic Vehicles
		["mechanic_tools"] 				= {["name"] = "mechanic_tools", 			["label"] = "Mechanic tools", 		    ["weight"] = 0, 		["type"] = "item", 		["image"] = "mechanic_tools.png", 		["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "Needed for vehicle repairs"},
		["toolbox"] 					= {["name"] = "toolbox", 			 	  	["label"] = "Toolbox", 		            ["weight"] = 0, 		["type"] = "item", 		["image"] = "toolbox.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "Needed for Performance part removal"},
		["ducttape"] 					= {["name"] = "ducttape", 			 	  	["label"] = "Duct Tape", 		       	["weight"] = 0, 		["type"] = "item", 		["image"] = "bodyrepair.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "Good for quick fixes"},
		["mechboard"] 					= {["name"] = "mechboard", 			 	  	["label"] = "Mechanic Sheet", 		   	["weight"] = 0, 		["type"] = "item", 		["image"] = "mechboard.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
	
		--Performance
		["turbo"] 		 	 		 	= {["name"] = "turbo", 						["label"] = "Supercharger Turbo", 		["weight"] = 0, 		["type"] = "item", 		["image"] = "turbo.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "Who doesn't need a 65mm Turbo??"},
		["car_armor"] 					= {["name"] = "car_armor", 					["label"] = "Vehicle Armor", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "armour.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
	
		["nos"] 					    = {["name"] = "nos", 			 	  	  	["label"] = "NOS Bottle", 		        ["weight"] = 0, 		["type"] = "item", 		["image"] = "nos.png", 				    ["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "A full bottle of NOS"},
		["noscan"] 					    = {["name"] = "noscan", 			 	  	["label"] = "Empty NOS Bottle", 		["weight"] = 0, 		["type"] = "item", 		["image"] = "noscan.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,  ["combinable"] = nil,   ["description"] = "An Empty bottle of NOS"},
		["noscolour"] 					= {["name"] = "noscolour", 			 	  	["label"] = "NOS Colour Injector", 		["weight"] = 0, 		["type"] = "item", 		["image"] = "noscolour.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,  ["combinable"] = nil,   ["description"] = "Make that purge spray"},
	
		["engine1"] 				    = {["name"] = "engine1", 			 	  	["label"] = "Performance Kit",            ["weight"] = 0, 		["type"] = "item", 		["image"] = "shonen.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
		["engine2"] 				    = {["name"] = "engine2", 			 	  	["label"] = "Gt Kit",        	    ["weight"] = 0, 		["type"] = "item", 		["image"] = "v8engine.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
		["engine3"] 				    = {["name"] = "engine3", 			 	  	["label"] = "Racing Kit",          		["weight"] = 0, 		["type"] = "item", 		["image"] = "v10engine.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
		["engine4"] 				    = {["name"] = "engine4", 			 	  	["label"] = "Competition Kit",               ["weight"] = 0, 		["type"] = "item", 		["image"] = "v12engine.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
	
		["transmission1"] 				= {["name"] = "transmission1", 				["label"] = "Transmission Lvl 1",       ["weight"] = 0, 		["type"] = "item", 		["image"] = "transmission1.png",  		["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
		["transmission2"] 				= {["name"] = "transmission2", 				["label"] = "Transmission Lvl 2",       ["weight"] = 0, 		["type"] = "item", 		["image"] = "transmission2.png",  		["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
		["transmission3"] 				= {["name"] = "transmission3",				["label"] = "Transmission Lvl 3",       ["weight"] = 0, 		["type"] = "item", 		["image"] = "transmission3.png",   		["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
	
		["brakes1"] 					= {["name"] = "brakes1", 			 		["label"] = "Performance Brakes",       ["weight"] = 0, 		["type"] = "item", 		["image"] = "brakes1.png", 		    	["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
		["brakes2"] 					= {["name"] = "brakes2", 			 		["label"] = "GT Big Brakes",            ["weight"] = 0, 		["type"] = "item", 		["image"] = "brakes2.png", 		    	["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
		["brakes3"] 					= {["name"] = "brakes3", 			 		["label"] = "Competition Brakes",       ["weight"] = 0, 		["type"] = "item", 		["image"] = "brakes3.png", 		    	["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
	
		["suspension1"] 				= {["name"] = "suspension1", 				["label"] = "Lowered Suspension", 		["weight"] = 0, 		["type"] = "item", 		["image"] = "suspension1.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
		["suspension2"] 				= {["name"] = "suspension2",  				["label"] = "Street Suspension",		["weight"] = 0, 		["type"] = "item", 		["image"] = "suspension2.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "Street Racing level Suspension"},
		["suspension3"] 				= {["name"] = "suspension3",  				["label"] = "Racing Suspension",		["weight"] = 0, 		["type"] = "item", 		["image"] = "suspension3.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "Street Racing level Suspension"},
		["suspension4"] 				= {["name"] = "suspension4",  				["label"] = "Rally Suspension",			["weight"] = 0, 		["type"] = "item", 		["image"] = "suspension4.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "Street Racing level Suspension"},
	
		["bprooftires"] 				= {["name"] = "bprooftires", 			   	["label"] = "Bulletproof Tires", 		["weight"] = 0, 		["type"] = "item", 		["image"] = "bprooftires.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
		["drifttires"] 					= {["name"] = "drifttires", 			   	["label"] = "Drift Tires", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "drifttires.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
	
		--Cosmetics
		["underglow_controller"] 		 = {["name"] = "underglow_controller", 		["label"] = "Neon Controller", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "underglow_controller.png", ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   	["description"] = "RGB LED Vehicle Remote"},
		["headlights"] 		 	 		 = {["name"] = "headlights", 				["label"] = "Xenon Headlights", 		["weight"] = 0, 		["type"] = "item", 		["image"] = "headlights.png", 			["unique"] = true, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   	["description"] = "8k HID headlights"},
	
		["tint_supplies"] 				 = {["name"] = "tint_supplies", 			["label"] = "Tint Supplies", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "tint_supplies.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,    ["description"] = "Supplies for window tinting"},
	
		["customplate"] 				 = {["name"] = "customplate", 				["label"] = "Customized Plates", 		["weight"] = 0, 		["type"] = "item", 		["image"] = "plate.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
		["hood"] 						 = {["name"] = "hood", 						["label"] = "Vehicle Hood", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "hood.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
		["roof"] 						 = {["name"] = "roof", 						["label"] = "Vehicle Roof", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "roof.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
		["spoiler"] 					 = {["name"] = "spoiler", 					["label"] = "Vehicle Spoiler", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "spoiler.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
		["bumper"] 						 = {["name"] = "bumper", 					["label"] = "Vehicle Bumper", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "bumper.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
		["skirts"] 						 = {["name"] = "skirts", 					["label"] = "Vehicle Skirts", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "skirts.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
		["exhaust"] 					 = {["name"] = "exhaust", 					["label"] = "Vehicle Exhaust", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "exhaust.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
		["seat"] 						 = {["name"] = "seat", 						["label"] = "Seat Cosmetics", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "seat.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
		["rollcage"] 					 = {["name"] = "rollcage", 					["label"] = "Roll Cage", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "rollcage.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
	
		["rims"] 						 = {["name"] = "rims", 						["label"] = "Custom Wheel Rims", 		["weight"] = 0, 		["type"] = "item", 		["image"] = "rims.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
	
		["livery"] 						 = {["name"] = "livery", 					["label"] = "Livery Roll", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "livery.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
		["paintcan"] 					 = {["name"] = "paintcan", 					["label"] = "Vehicle Spray Can", 		["weight"] = 0, 		["type"] = "item", 		["image"] = "spraycan.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
		["tires"] 						 = {["name"] = "tires", 					["label"] = "Drift Smoke Tires",        ["weight"] = 0, 		["type"] = "item", 		["image"] = "tires.png", 	  		    ["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
	
		["horn"] 						 = {["name"] = "horn", 						["label"] = "Custom Vehicle Horn", 		["weight"] = 0, 		["type"] = "item", 		["image"] = "horn.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
	
		["internals"] 					 = {["name"] = "internals", 				["label"] = "Internal Cosmetics", 		["weight"] = 0, 		["type"] = "item", 		["image"] = "internals.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
		["externals"] 					 = {["name"] = "externals", 				["label"] = "Exterior Cosmetics", 		["weight"] = 0, 		["type"] = "item", 		["image"] = "mirror.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = ""},
	


}