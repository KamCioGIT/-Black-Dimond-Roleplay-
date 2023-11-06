Config = {}

Config.Framework = 'QB' -- ESX or QB
Config.FrameworkCore = 'qb-core' -- es_extended, qb-core, if-core, ...

Config.PaymentMethod = 'money' -- money/cash, bank

Config.ShootingRange = {
   enabled = true, -- enable weapon testing ?
   duration = 1 -- Shooting range duration, in minutes.
}

Config.Webhook = { -- Discord webhook - Sends a message to discord channel when player buys a weapon or ammo.
   link = '', -- Discord webhook link
   title = 'WeaponShop',
   color = 65280,
   description = "The player **%s (%s)** has successfully purchased **%s** for **$%s**.", -- (playerCharName, playerGameName, weapon/ammo, price)
   authorName = "WeaponShop Logs",
   authorUrl = "https://cdn.discordapp.com/icons/925082868831617074/49e4c022837fc9d876378d44840ff0da.webp?size=128",
}

Config.Notification = function(message, type, time)
   TriggerEvent('esx:showNotification', message, type, time)
   TriggerEvent('QBCore:Notify', message, type, time)
end

Config.WeaponShops = {
   {
      markerposition = vector3(21.6799, -1106.256, 29.79), -- Interact Position
      shootingRangePos = vector3(13.144, -1097.60, 29.83), -- Shooting Range Position
      blipname = "Weapon Shop", -- Blip Name
      blipsprite = 590, -- Blip
      blipcolor = 0, -- Blip Color
      blipscale = 1.0, -- Blip Size
      dist = 2.5 -- distance to interact (let be normal)
   }
}

Config.Locales = {
   HelpNotification = "Press [E] to access the weapon shop!",

   NoMoney = "You don't have enough money, come back later!",
   NoWeapon = "You don't have this Weapon armed",

   Buyed = "You have successfully acquired the weapon!",
   Buyed2 = "You have successfully acquired the weapon Ammo!",

   ShootingRange = "You are now in the shooting range, you have 1 minute to test the desired weapon!",
   LeaveShootingRange = "You left the shooting range!",

   DimenstionEnter = "You are now in a free world and will not see any players for the time being!",
   DimenstionLeave = "You are now from the Free World, and see all players again!",
}

-- Check README.md to get a detailed view of below properties. 

Config.ShopWeapons = {
   ['WEAPON_KNIFE'] = {
      infos = {
         weight = 0.1,
         damage = 15,
         speed = 0,
         returns = 0
      },
      price = 500,
      ammoData = nil,
      displayName = 'Knife',
      category = 'coldWeapons'
   },
   ['weapon_katana'] = {
      infos = {
         weight = 0.1,
         damage = 15,
         speed = 0,
         returns = 0
      },
      price = 500,
      ammoData = nil,
      displayName = 'Katana',
      category = 'coldWeapons'
   },
   ['weapon_shiv'] = {
      infos = {
         weight = 0.1,
         damage = 15,
         speed = 0,
         returns = 0
      },
      price = 500,
      ammoData = nil,
      displayName = 'Shiv',
      category = 'coldWeapons'
   },
   ['weapon_sledgehammer'] = {
      infos = {
         weight = 0.1,
         damage = 15,
         speed = 0,
         returns = 0
      },
      price = 500,
      ammoData = nil,
      displayName = 'Sledge Hammer',
      category = 'coldWeapons'
   },
   ['weapon_karambit'] = {
      infos = {
         weight = 0.1,
         damage = 15,
         speed = 0,
         returns = 0
      },
      price = 500,
      ammoData = nil,
      displayName = 'Karambit',
      category = 'coldWeapons'
   },
   ['weapon_keyboard'] = {
      infos = {
         weight = 0.1,
         damage = 15,
         speed = 0,
         returns = 0
      },
      price = 500,
      ammoData = nil,
      displayName = 'Keyboard',
      category = 'coldWeapons'
   },
----------------pistol
   ['WEAPON_PISTOL_MK2'] = {
      infos = {
         weight = 1.1,
         damage = 26,
         speed = 40,
         returns = 25
      },
      price = 2000,
      ammoData = {
         price = 20,
         item = 'pistol_ammo',
         amount = 50
      },
      displayName = 'Pistol',
      category = 'pistolWeapons'
   },
   ['weapon_glock17'] = {
      infos = {
         weight = 1.1,
         damage = 26,
         speed = 40,
         returns = 25
      },
      price = 2000,
      ammoData = {
         price = 20,
         item = 'pistol_ammo',
         amount = 50
      },
      displayName = 'Glock-17',
      category = 'pistolWeapons'
   },
   ['weapon_glock22'] = {
      infos = {
         weight = 1.1,
         damage = 26,
         speed = 40,
         returns = 25
      },
      price = 2000,
      ammoData = {
         price = 20,
         item = 'pistol_ammo',
         amount = 50
      },
      displayName = 'Glock-22',
      category = 'pistolWeapons'
   },
   ['weapon_deagle'] = {
      infos = {
         weight = 1.1,
         damage = 26,
         speed = 40,
         returns = 25
      },
      price = 2000,
      ammoData = {
         price = 20,
         item = 'pistol_ammo',
         amount = 50
      },
      displayName = 'Desert Eagle',
      category = 'pistolWeapons'
   },
   ['weapon_fnx45'] = {
      infos = {
         weight = 1.1,
         damage = 26,
         speed = 40,
         returns = 25
      },
      price = 2000,
      ammoData = {
         price = 20,
         item = 'pistol_ammo',
         amount = 50
      },
      displayName = 'FN FNX-45',
      category = 'pistolWeapons'
   },
   ['weapon_m1911'] = {
      infos = {
         weight = 1.1,
         damage = 26,
         speed = 40,
         returns = 25
      },
      price = 2000,
      ammoData = {
         price = 20,
         item = 'pistol_ammo',
         amount = 50
      },
      displayName = 'M1911',
      category = 'pistolWeapons'
   },
   ['weapon_glock20'] = {
      infos = {
         weight = 1.1,
         damage = 26,
         speed = 40,
         returns = 25
      },
      price = 2000,
      ammoData = {
         price = 20,
         item = 'pistol_ammo',
         amount = 50
      },
      displayName = 'Glock-20',
      category = 'pistolWeapons'
   },
   ['weapon_glock19gen4'] = {
      infos = {
         weight = 1.1,
         damage = 26,
         speed = 40,
         returns = 25
      },
      price = 2000,
      ammoData = {
         price = 20,
         item = 'pistol_ammo',
         amount = 50
      },
      displayName = 'Glock-19 Gen 4',
      category = 'pistolWeapons'
   },

   ['WEAPON_MARKSMANPISTOL'] = {
      infos = {
         weight = 1.1,
         damage = 80,
         speed = 15,
         returns = 45
      },
      price = 2500,
      ammoData = {
         price = 20,
         item = 'pistol_ammo',
         amount = 50
      },
      displayName = 'Marksman Pistol',
      category = 'pistolWeapons'
   },

   ['WEAPON_HEAVYSNIPER'] = {
      infos = {
         weight = 6.8,
         damage = 98,
         speed = 20,
         returns = 60
      },
      price = 7000,
      ammoData = {
         price = 100,
         item = 'sniper_ammo',
         amount = 50
      },
      displayName = 'Heavy Sniper',
      category = 'sniperWeapons'
   },

   ['WEAPON_SAWNOFFSHOTGUN'] = {
      infos = {
         weight = 3.1,
         damage = 96,
         speed = 20,
         returns = 80
      },
      price = 5000,
      ammoData = {
         price = 80,
         item = 'shotgun_ammo',
         amount = 50
      },
      displayName = 'Sawnoff Shotgun',
      category = 'shotgunWeapons'
   },
----------  smg
   ['WEAPON_MICROSMG'] = {
      infos = {
         weight = 2.1,
         damage = 21,
         speed = 60,
         returns = 40
      },
      price = 3000,
      ammoData = {
         price = 30,
         item = 'smg_ammo',
         amount = 50
      },
      displayName = 'Micro SMG',
      category = 'smgWeapons'
   },
   ['weapon_pmxfm'] = {
      infos = {
         weight = 2.1,
         damage = 21,
         speed = 60,
         returns = 40
      },
      price = 3000,
      ammoData = {
         price = 30,
         item = 'smg_ammo',
         amount = 50
      },
      displayName = 'Beretta PMX',
      category = 'smgWeapons'
   },
   ['weapon_mac10'] = {
      infos = {
         weight = 2.1,
         damage = 21,
         speed = 60,
         returns = 40
      },
      price = 3000,
      ammoData = {
         price = 30,
         item = 'smg_ammo',
         amount = 50
      },
      displayName = 'MAC-10',
      category = 'smgWeapons'
   },
   ['WEAPON_ASSAULTSMG'] = {
      infos = {
         weight = 2.5,
         damage = 23,
         speed = 55,
         returns = 20
      },
      price = 3500,
      ammoData = {
         price = 30,
         item = 'smg_ammo',
         amount = 50
      },
      displayName = 'Assault SMG',
      category = 'smgWeapons'
   },
------------ riffel

['weapon_mk47fm'] = {
   infos = {
      weight = 3.3,
      damage = 34,
      speed = 70,
      returns = 55
   },
   price = 5000,
   ammoData = {
      price = 35,
      item = 'rifle_ammo',
      amount = 50
   },
   displayName = 'MK47 Mutant',
   category = 'rifleWeapons'
},
['weapon_m6ic'] = {
   infos = {
      weight = 3.3,
      damage = 34,
      speed = 70,
      returns = 55
   },
   price = 5000,
   ammoData = {
      price = 35,
      item = 'rifle_ammo',
      amount = 50
   },
   displayName = 'LWRC M6IC',
   category = 'rifleWeapons'
},
['weapon_scarsc'] = {
   infos = {
      weight = 3.3,
      damage = 34,
      speed = 70,
      returns = 55
   },
   price = 5000,
   ammoData = {
      price = 35,
      item = 'rifle_ammo',
      amount = 50
   },
   displayName = 'Scar SC',
   category = 'rifleWeapons'
},
['weapon_m4'] = {
   infos = {
      weight = 3.3,
      damage = 34,
      speed = 70,
      returns = 55
   },
   price = 5000,
   ammoData = {
      price = 35,
      item = 'rifle_ammo',
      amount = 50
   },
   displayName = 'M4A1 Carbine',
   category = 'rifleWeapons'
},
['weapon_ak47'] = {
   infos = {
      weight = 3.3,
      damage = 34,
      speed = 70,
      returns = 55
   },
   price = 5000,
   ammoData = {
      price = 35,
      item = 'rifle_ammo',
      amount = 50
   },
   displayName = 'Ak-47 Valhalla',
   category = 'rifleWeapons'
},
['weapon_ak74'] = {
   infos = {
      weight = 3.3,
      damage = 34,
      speed = 70,
      returns = 55
   },
   price = 5000,
   ammoData = {
      price = 35,
      item = 'rifle_ammo',
      amount = 50
   },
   displayName = 'Ak-47 HelRaiser',
   category = 'rifleWeapons'
},
['weapon_aks74'] = {
   infos = {
      weight = 3.3,
      damage = 34,
      speed = 70,
      returns = 55
   },
   price = 5000,
   ammoData = {
      price = 35,
      item = 'rifle_ammo',
      amount = 50
   },
   displayName = 'AKS-74',
   category = 'rifleWeapons'
},
['weapon_groza'] = {
   infos = {
      weight = 3.3,
      damage = 34,
      speed = 70,
      returns = 55
   },
   price = 5000,
   ammoData = {
      price = 35,
      item = 'rifle_ammo',
      amount = 50
   },
   displayName = 'OTs-14 Groza',
   category = 'rifleWeapons'
},
['weapon_scarh'] = {
   infos = {
      weight = 3.3,
      damage = 34,
      speed = 70,
      returns = 55
   },
   price = 5000,
   ammoData = {
      price = 35,
      item = 'rifle_ammo',
      amount = 50
   },
   displayName = 'Scar-H',
   category = 'rifleWeapons'
},
   ['WEAPON_ADVANCEDRIFLE'] = {
      infos = {
         weight = 3.3,
         damage = 34,
         speed = 70,
         returns = 55
      },
      price = 5000,
      ammoData = {
         price = 35,
         item = 'rifle_ammo',
         amount = 50
      },
      displayName = 'Advanced Rifle',
      category = 'rifleWeapons'
   },
   ['WEAPON_CARBINERIFLE'] = {
      infos = {
         weight = 3.2,
         damage = 32,
         speed = 65,
         returns = 55
      },
      price = 4800,
      ammoData = {
         price = 35,
         item = 'rifle_ammo',
         amount = 50
      },
      displayName = 'Carbine Rifle',
      category = 'rifleWeapons'
   },

   ['WEAPON_RPG'] = {
      infos = {
         weight = 3.2,
         damage = 100,
         speed = 5,
         returns = 20
      },
      price = 6000,
      ammoData = {
         price = 50,
         item = 'rpg_ammo',
         amount = 10
      },
      displayName = 'RPG',
      category = 'rifleWeapons'
   },
}
