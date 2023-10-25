local weapons = {
  
   

    'WEAPON_GLOCK19X',
	'WEAPON_GLOCK19',
	'WEAPON_GLOCK40',
	'WEAPON_GLOCK40S',
	'WEAPON_DDM4V5',
	'WEAPON_MPX',
	'WEAPON_PD509',
	'WEAPON_APS',
	'WEAPON_PPK',
	'WEAPON_PITVIPER',
	'WEAPON_BARP',
	'WEAPON_RDP',
	'WEAPON_LOK',
	'WEAPON_PLR',
	'WEAPON_XDS9',
	'WEAPON_PPS',
	'WEAPON_XDME',
	'WEAPON_SP',
	'WEAPON_GLOCK17S',
	'WEAPON_GLOCK18C',
	'WEAPON_GLOCK19S',
	'WEAPON_ARPISTOL',
	'WEAPON_GLOCK26S',
	'WEAPON_GRENADES',
	'WEAPON_M32S',
	'WEAPON_MICRODRACO',
	'WEAPON_RUGER57',
	'WEAPON_MK18',
	'WEAPON_680',
	'WEAPON_ZIPTIE',
    'WEAPON_KNIFE',
    'WEAPON_NIGHTSTICK',
    'WEAPON_BREAD',
    'WEAPON_FLASHLIGHT',
    'WEAPON_HAMMER',
    'WEAPON_BAT',
    'WEAPON_GOLFCLUB',
    'WEAPON_CROWBAR',
    'WEAPON_BOTTLE',
    'WEAPON_DAGGER',
    'WEAPON_HATCHET',
    'WEAPON_MACHETE',
    'WEAPON_SWITCHBLADE',
    'WEAPON_BATTLEAXE',
    'WEAPON_POOLCUE',
    'WEAPON_WRENCH',
    'WEAPON_PISTOL',
    'WEAPON_PISTOL_MK2',
    'WEAPON_COMBATPISTOL',
    'WEAPON_APPISTOL',
    'WEAPON_PISTOL50',
    'WEAPON_REVOLVER',
    'WEAPON_SNSPISTOL',
    'WEAPON_HEAVYPISTOL',
    'WEAPON_VINTAGEPISTOL',
    'WEAPON_MICROSMG',
    'WEAPON_SMG',
    'WEAPON_ASSAULTSMG',
    'WEAPON_MINISMG',
    'WEAPON_MACHINEPISTOL',
    'WEAPON_COMBATPDW',
    'WEAPON_PUMPSHOTGUN',
    'WEAPON_SAWNOFFSHOTGUN',
    'WEAPON_ASSAULTSHOTGUN',
    'WEAPON_BULLPUPSHOTGUN',
    'WEAPON_HEAVYSHOTGUN',
    'WEAPON_ASSAULTRIFLE',
    'WEAPON_CARBINERIFLE',
    'WEAPON_ADVANCEDRIFLE',
    'WEAPON_SPECIALCARBINE',
    'WEAPON_BULLPUPRIFLE',
    'WEAPON_COMPACTRIFLE',
    'WEAPON_MG',
    'WEAPON_COMBATMG',
    'WEAPON_GUSENBERG',
    'WEAPON_SNIPERRIFLE',
    'WEAPON_HEAVYSNIPER',
    'WEAPON_MARKSMANRIFLE',
    'WEAPON_GRENADELAUNCHER',
    'WEAPON_RPG',
    'WEAPON_STINGER',
    'WEAPON_MINIGUN',
    'WEAPON_GRENADE',
    'WEAPON_STICKYBOMB',
    'WEAPON_SMOKEGRENADE',
    'WEAPON_BZGAS',
    'WEAPON_MOLOTOV',
    'WEAPON_DIGISCANNER',
    'WEAPON_FIREWORK',
    'WEAPON_MUSKET',
    'WEAPON_STUNGUN',
    'WEAPON_HOMINGLAUNCHER',
    'WEAPON_PROXMINE',
    'WEAPON_FLAREGUN',
    'WEAPON_MARKSMANPISTOL',
    'WEAPON_RAILGUN',
    'WEAPON_DBSHOTGUN',
    'WEAPON_AUTOSHOTGUN',
    'WEAPON_COMPACTLAUNCHER',
    'WEAPON_PIPEBOMB',
    'WEAPON_DOUBLEACTION',

    --Custom Weapon
	'WEAPON_AK47',
	'WEAPON_M9',
	'WEAPON_FNX45',
	'WEAPON_DE',
	'WEAPON_GLOCK17',
	'WEAPON_M4',
	'WEAPON_HK416',
	'WEAPON_MK14',
	'WEAPON_HUNTINGRIFLE',
	'WEAPON_AR15',
	'WEAPON_M70',
	'WEAPON_M1911',
	'WEAPON_MAC10',
	'WEAPON_UZI',
	'WEAPON_MP9',
	'WEAPON_M110',
	'WEAPON_MOSSBERG',
	'WEAPON_REMINGTON',
	'WEAPON_SCARH',
	'WEAPON_SHIV',
	'WEAPON_KATANA',
	'WEAPON_SLEDGEHAMMER',
	'WEAPON_COLBATON',
	'WEAPON_KARAMBIT',
	'WEAPON_MP5',
	'WEAPON_GLOCK18C',
	'WEAPON_GLOCK22',
	'WEAPON_AKS74',
	'WEAPON_AK74',
    'WEAPON_VICTUSXMR',


    'weapon_a15rc',
	'weapon_ak47s',
	'weapon_famasu1',
	'weapon_grau',
    'weapon_iar',
    'weapon_jrbak',
	'weapon_m133',
	'weapon_neva',
	'weapon_sb4s',
	'weapon_sr47',
    'weapon_akmkh',
    'weapon_casr',
	'weapon_bulldog',
    'weapon_fn42',
	'weapon_fmr',
	'weapon_drh',
	'weapon_galilar',
	'weapon_ak4k',
	'weapon_m16a3',
	'weapon_slr15',
    'weapon_ars',
    'weapon_arc15',
    'weapon_fn502',
    'weapon_howa_2',
    'weapon_safak',
    'weapon_h2smg',
    'weapon_hfsmg',
    'weapon_sar',
    'weapon_mza',
    'weapon_sfak',
	'weapon_sf2',
    'weapon_g36',
    'weapon_arma1',
    'weapon_nanite',
    'weapon_lr300',
    'weapon_ms32',
    'weapon_m416p',
    'weapon_ue4',
    'weapon_sarb',
    'weapon_sfrifle',
    'weapon_idw',
    'weapon_cfs',
    'weapon_aug',
    'weapon_groza',
    'weapon_sunda',
    'weapon_uzi',
    'weapon_ak47',
    'weapon_ditdg',
    'weapon_g3_2',
    'weapon_awp',
    'weapon_stungrenade',
}
 --Weapons that require the Police holster animation
 local holsterableWeapons = {
    --'WEAPON_STUNGUN',
    --Custom Weapon
    'WEAPON_DE',
    'WEAPON_GLOCK17',
    'WEAPON_M9',
    'WEAPON_M1911',
    'WEAPON_FNX45',
    'WEAPON_GLOCK18C',
    'WEAPON_GLOCK22',
}

local holstered = true
local canFire = true
local currWeapon = `WEAPON_UNARMED`
local currentHolster = nil
local currentHolsterTexture = nil
local WearingHolster = nil

local function loadAnimDict(dict)
    if HasAnimDictLoaded(dict) then return end
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Wait(10)
    end
end

local function CheckWeapon(newWeap)
    for i = 1, #weapons do
        if joaat(weapons[i]) == newWeap then
            return true
        end
    end
    return false
end

local function IsWeaponHolsterable(weap)
    for i = 1, #Config.HolsterableWeapons do
        if joaat(Config.HolsterableWeapons[i]) == weap then
            return true
        end
    end
    return false
end

RegisterNetEvent('weapons:ResetHolster', function()
    holstered = true
    canFire = true
    currWeapon = `WEAPON_UNARMED`
    currentHolster = nil
    currentHolsterTexture = nil
    WearingHolster = nil
end)

RegisterNetEvent('weapons:client:DrawWeapon', function()
    if GetResourceState('qb-inventory') == 'missing' then return end -- This part is only made to work with qb-inventory, other inventories might conflict
    local sleep
    local weaponcheck = 0
    while true do
        local ped = PlayerPedId()
        sleep = 250
        if DoesEntityExist(ped) and not IsEntityDead(ped) and not IsPedInParachuteFreeFall(ped) and not IsPedFalling(ped) and (GetPedParachuteState(ped) == -1 or GetPedParachuteState(ped) == 0) then
            sleep = 0
            if currWeapon ~= GetSelectedPedWeapon(ped) then
                local pos = GetEntityCoords(ped, true)
                local rot = GetEntityHeading(ped)

                local newWeap = GetSelectedPedWeapon(ped)
                SetCurrentPedWeapon(ped, currWeapon, true)
                loadAnimDict("reaction@intimidation@1h")
                loadAnimDict("reaction@intimidation@cop@unarmed")
                loadAnimDict("rcmjosh4")
                loadAnimDict("weapons@pistol@")

                local HolsterVariant = GetPedDrawableVariation(ped, 7)
                WearingHolster = false
                for i = 1,#Config.HolsterVariant,1 do
                    if HolsterVariant == Config.HolsterVariant[i] then
                        WearingHolster = true
                    end
                end
                if CheckWeapon(newWeap) then
                    if holstered then
                        if WearingHolster then
                            --TaskPlayAnim(ped, "rcmjosh4", "josh_leadout_cop2", 8.0, 2.0, -1, 48, 10, 0, 0, 0 )
                            canFire = false
                            CeaseFire()
                            currentHolster = GetPedDrawableVariation(ped, 7)
                            currentHolsterTexture = GetPedTextureVariation(ped, 7)
                            TaskPlayAnimAdvanced(ped, "rcmjosh4", "josh_leadout_cop2", pos.x, pos.y, pos.z, 0, 0, rot, 3.0, 3.0, -1, 50, 0, 0, 0)
                            Wait(300)
                            SetCurrentPedWeapon(ped, newWeap, true)

                            if IsWeaponHolsterable(newWeap) then
                                SetPedComponentVariation(ped, 7, currentHolster == 156 and 163 or currentHolster == 162 and 164 or currentHolster == 166 and 165, currentHolsterTexture, 2)
                            end
                            currWeapon = newWeap
                            Wait(300)
                            ClearPedTasks(ped)
                            holstered = false
                            canFire = true
                        else
                            canFire = false
                            CeaseFire()
                            TaskPlayAnimAdvanced(ped, "reaction@intimidation@1h", "intro", pos.x, pos.y, pos.z, 0, 0, rot, 8.0, 3.0, -1, 50, 0, 0, 0)
                            Wait(1000)
                            SetCurrentPedWeapon(ped, newWeap, true)
                            currWeapon = newWeap
                            Wait(1400)
                            ClearPedTasks(ped)
                            holstered = false
                            canFire = true
                        end
                    elseif newWeap ~= currWeapon and CheckWeapon(currWeapon) then
                        if WearingHolster then
                            canFire = false
                            CeaseFire()

                            TaskPlayAnimAdvanced(ped, "reaction@intimidation@cop@unarmed", "intro", pos.x, pos.y, pos.z, 0, 0, rot, 3.0, 3.0, -1, 50, 0, 0, 0)
                            Wait(500)

                            if IsWeaponHolsterable(currWeapon) then
                                SetPedComponentVariation(ped, 7, currentHolster, currentHolsterTexture, 2)
                            end

                            SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
                            currentHolster = GetPedDrawableVariation(ped, 7)
                            currentHolsterTexture = GetPedTextureVariation(ped, 7)

                            TaskPlayAnimAdvanced(ped, "rcmjosh4", "josh_leadout_cop2", pos.x, pos.y, pos.z, 0, 0, rot, 3.0, 3.0, -1, 50, 0, 0, 0)
                            Wait(300)
                            SetCurrentPedWeapon(ped, newWeap, true)

                            if IsWeaponHolsterable(newWeap) then
                                SetPedComponentVariation(ped, 7, currentHolster == 156 and 163 or currentHolster == 162 and 164 or currentHolster == 166 and 165, currentHolsterTexture, 2)
                            end

                            Wait(500)
                            currWeapon = newWeap
                            ClearPedTasks(ped)
                            holstered = false
                            canFire = true
                        else
                            canFire = false
                            CeaseFire()
                            TaskPlayAnimAdvanced(ped, "reaction@intimidation@1h", "outro", pos.x, pos.y, pos.z, 0, 0, rot, 8.0, 3.0, -1, 50, 0, 0, 0)
                            Wait(1600)
                            SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
                            TaskPlayAnimAdvanced(ped, "reaction@intimidation@1h", "intro", pos.x, pos.y, pos.z, 0, 0, rot, 8.0, 3.0, -1, 50, 0, 0, 0)
                            Wait(1000)
                            SetCurrentPedWeapon(ped, newWeap, true)
                            currWeapon = newWeap
                            Wait(1400)
                            ClearPedTasks(ped)
                            holstered = false
                            canFire = true
                        end
                    else
                        if WearingHolster then
                            SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
                            currentHolster = GetPedDrawableVariation(ped, 7)
                            currentHolsterTexture = GetPedTextureVariation(ped, 7)
                            TaskPlayAnimAdvanced(ped, "rcmjosh4", "josh_leadout_cop2", pos.x, pos.y, pos.z, 0, 0, rot, 3.0, 3.0, -1, 50, 0, 0, 0)
                            Wait(300)
                            SetCurrentPedWeapon(ped, newWeap, true)

                            if IsWeaponHolsterable(newWeap) then
                                SetPedComponentVariation(ped, 7, currentHolster == 156 and 163 or currentHolster == 162 and 164 or currentHolster == 166 and 165, currentHolsterTexture, 2)
                            end

                            currWeapon = newWeap
                            Wait(300)
                            ClearPedTasks(ped)
                            holstered = false
                            canFire = true
                        else
                            SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
                            TaskPlayAnimAdvanced(ped, "reaction@intimidation@1h", "intro", pos.x, pos.y, pos.z, 0, 0, rot, 8.0, 3.0, -1, 50, 0, 0, 0)
                            Wait(1000)
                            SetCurrentPedWeapon(ped, newWeap, true)
                            currWeapon = newWeap
                            Wait(1400)
                            ClearPedTasks(ped)
                            holstered = false
                            canFire = true
                        end
                    end
                else
                    if not holstered and CheckWeapon(currWeapon) then
                        if WearingHolster then
                            canFire = false
                            CeaseFire()
                            TaskPlayAnimAdvanced(ped, "reaction@intimidation@cop@unarmed", "intro", pos.x, pos.y, pos.z, 0, 0, rot, 3.0, 3.0, -1, 50, 0, 0, 0)
                            Wait(500)

                            if IsWeaponHolsterable(currWeapon) then
                                SetPedComponentVariation(ped, 7, currentHolster, currentHolsterTexture, 2)
                            end

                            SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
                            ClearPedTasks(ped)
                            SetCurrentPedWeapon(ped, newWeap, true)
                            holstered = true
                            canFire = true
                            currWeapon = newWeap
                        else
                            canFire = false
                            CeaseFire()
                            TaskPlayAnimAdvanced(ped, "reaction@intimidation@1h", "outro", pos.x, pos.y, pos.z, 0, 0, rot, 8.0, 3.0, -1, 50, 0, 0, 0)
                            Wait(1400)
                            SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
                            ClearPedTasks(ped)
                            SetCurrentPedWeapon(ped, newWeap, true)
                            holstered = true
                            canFire = true
                            currWeapon = newWeap
                        end
                    else
                        SetCurrentPedWeapon(ped, newWeap, true)
                        holstered = false
                        canFire = true
                        currWeapon = newWeap
                    end
                end
            end
        end
        Wait(sleep)
        if currWeapon == nil or currWeapon == `WEAPON_UNARMED` then
            weaponcheck = weaponcheck + 1
            if weaponcheck == 2 then
                break
            end
        end
    end
end)

function CeaseFire()
    CreateThread(function()
        if GetResourceState('qb-inventory') == 'missing' then return end -- This part is only made to work with qb-inventory, other inventories might conflict
        while not canFire do
            DisableControlAction(0, 25, true)
            DisablePlayerFiring(PlayerId(), true)
            Wait(0)
        end
    end)
end