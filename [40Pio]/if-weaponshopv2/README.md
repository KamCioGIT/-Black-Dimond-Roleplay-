# if-weaponshopv2

* Tip: On VSCode you can try `CTRL + SHIFT + V` to see the visualization of this file.

- `Config.ShopWeapons` Details:
    ```lua
        ['WEAPON_PISTOL'] = { -- The Weapon Name/Spawn.
            infos = { -- The Weapon Infos. * Only visual.
                weight = 0.1,
                damage = 15,
                speed = 0,
                returns = 0
            },
            price = 500, -- The Price of the Weapon.
            ammoData = { -- All the data of the weapon ammo buying. * Set to nil/false to disable the ammo buy for this weapon.
                price = 20, -- The Price of the ammo.
                item = 'pistol_ammo', -- The ammo item. * If you don't uses this method to ammo, set it to nil/false.
                amount = 5 -- The amount of items given (or ammo if above is set to nil/false).
            },
            displayName = 'Knife', -- The Weapon "human" name, used on shop.
            category = 'coldWeapons' -- The Weapon category. Available Categories: coldWeapons, pistolWeapons, sniperWeapons, shotgunWeapons, smgWeapons and rifleWeapons.
        },
    ```