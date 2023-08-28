RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    TriggerServerEvent("qb-clothes:loadPlayerSkin")

    TriggerServerEvent("codem-appearance:LoadClothingCategories")
    TriggerServerEvent("codem-appearance:LoadSavedClothings")
    TriggerServerEvent("codem-appearance:LoadUnpaidOutfits")
end)

RegisterCommand(Config.ReloadCommand, function()
    TriggerEvent("codem-appearance:reloadSkin")
    ClearPedBloodDamage(PlayerPedId())
    ResetPedVisibleDamage(PlayerPedId())
    ClearPedLastWeaponDamage(PlayerPedId())
end)

CreateThread(function()
    while true do
        if menuOpen then
            if not IsEntityPlayingAnim(PlayerPedId(), "anim@amb@clubhouse@mini@darts@", "wait_idle", 3) then
                RequestAnimDict("anim@amb@clubhouse@mini@darts@")
                while not HasAnimDictLoaded("anim@amb@clubhouse@mini@darts@") do
                    Wait(0)
                end
                TaskPlayAnim(PlayerPedId(), "anim@amb@clubhouse@mini@darts@" , "wait_idle", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
            end
        end
        Wait(500)
    end
end)

RegisterNetEvent("codem-appearance:reloadSkin")
AddEventHandler("codem-appearance:reloadSkin", function()
    local skin = TriggerCallback("codem-appearance:GetSkin")
    if skin then
        if Config.Framework == 'esx' or Config.Framework == 'oldesx' then
            TriggerEvent('skinchanger:loadSkin', skin)
        else
            TriggerEvent('skinchanger:loadSkin', FormatQBCoreData(skin))                    
        end
    end
end)

RegisterNetEvent('qb-clothing:client:loadOutfit')
AddEventHandler('qb-clothing:client:loadOutfit', function(oData)
    oData = FormatQBCoreData(oData)
    TriggerEvent('skinchanger:loadPedSkin', oData)
end)

function HidePlayers()
    CreateThread(function()
        while menuOpen and currentCharacterPage == 'charcreator'  do
            local time = 500
                time = 1                        
            for _, player in ipairs(GetActivePlayers()) do
                if player ~= PlayerId() and NetworkIsPlayerActive(player) then
                    NetworkFadeInEntity(GetPlayerPed(player),true)
               end
            end
            Wait(time)
        end

        for _, player in ipairs(GetActivePlayers()) do
            if player ~= PlayerId() and NetworkIsPlayerActive(player) then
                NetworkFadeOutEntity(GetPlayerPed(player),false)
            end
        end
    end)
end

RegisterNUICallback("mainClothes", function(data, cb)
    TriggerEvent("codem-appearance:reloadSkin")
    cb("ok")
end)

RegisterNetEvent("qb-clothing:client:openMenu")
AddEventHandler("qb-clothing:client:openMenu", function()
    OpenMenu("charcreator")
end)

RegisterNetEvent('qb-clothing:client:loadPlayerClothing')
AddEventHandler('qb-clothing:client:loadPlayerClothing', function(skin, ped)
    TriggerEvent('skinchanger:loadSkin', FormatQBCoreData(skin), nil, ped)
end)

RegisterNetEvent("qb-clothes:client:CreateFirstCharacter")
AddEventHandler("qb-clothes:client:CreateFirstCharacter", function()
    OpenMenu("charcreator")
end)

RegisterNetEvent("qb-clothes:loadSkin")
AddEventHandler("qb-clothes:loadSkin", function(_, model, data)
    local skin = TriggerCallback("codem-appearance:GetSkin")
    if skin then
        local gender = Core.Functions.GetPlayerData().charinfo.gender

        if CheckSkin(skin) then
            local model
            if gender == 1 then -- Gender is ONE for FEMALE
                model = GetHashKey("mp_f_freemode_01") -- Female Model
            else
                model = GetHashKey("mp_m_freemode_01") -- Male Model
            end
            TriggerServerEvent("codem-appearance:SaveSkin", FormatQBCoreData(skin), model)
            while not migrated do
                Wait(0)
            end
            migrated = false
        end
        skin = TriggerCallback("codem-appearance:GetSkin")
        if gender == 1 then
            TriggerEvent('skinchanger:loadDefaultModel', false, nil)
        else
            TriggerEvent('skinchanger:loadDefaultModel', true, nil)
        end
        Wait(500)
        TriggerEvent('skinchanger:loadSkin', FormatQBCoreData(skin))
        TriggerServerEvent("codem-appearance:LoadTattoos")

    else
        local gender = Core.Functions.GetPlayerData().charinfo.gender
        if gender == 1 then
            TriggerEvent('skinchanger:loadDefaultModel', false, nil)
        else
            TriggerEvent('skinchanger:loadDefaultModel', true, nil)
        end
        TriggerEvent('skinchanger:change', "sex", gender)
        TriggerEvent('skinchanger:loadSkin', {sex = gender}, OpenMenu("charcreator"))
        TriggerServerEvent("codem-appearance:LoadTattoos")
    end
end)

RegisterNetEvent("esx:playerLoaded")
AddEventHandler("esx:playerLoaded", function(PlayerData, isNew)
    TriggerServerEvent("codem-appearance:LoadTattoos")
    TriggerServerEvent("codem-appearance:LoadClothingCategories")
    TriggerServerEvent("codem-appearance:LoadSavedClothings")
    TriggerServerEvent("codem-appearance:LoadUnpaidOutfits")
end)

RegisterNetEvent('esx_skin:openSaveableMenu')
AddEventHandler('esx_skin:openSaveableMenu', function(submitCb, cancelCb)
    OpenSaveableMenu(submitCb, cancelCb)
end)

function OpenSaveableMenu(submitCb, cancelCb)
    OpenMenu("charcreator")
    while menuOpen do
        Wait(0)
    end
    submitCb()
end

AddEventHandler('esx_skin:playerRegistered', function()
    CreateThread(function()

        if firstSpawn then
            local skin = TriggerCallback("codem-appearance:GetSkin")
            if not skin  then
                TriggerEvent('skinchanger:change', "sex", 0)
                TriggerEvent('skinchanger:loadSkin', {sex = 0}, OpenMenu("charcreator"))
                Wait(100)
            else
                if Config.Framework == 'esx' or Config.Framework == 'oldesx' then
                    TriggerEvent('skinchanger:loadSkin', skin)
                else
                    TriggerEvent('skinchanger:loadSkin', FormatQBCoreData(skin))                    
                end
                Wait(100)
            end

            firstSpawn = false
        end
    end)
end)


AddEventHandler('esx_skin:resetFirstSpawn', function()
    playerLoaded = false
    firstSpawn = true
end)

CreateThread(function()
    Wait(3000)
    WaitCore()
    WaitPlayer()
    TriggerServerEvent("codem-appearance:LoadTattoos")
    TriggerServerEvent("codem-appearance:LoadClothingCategories")
    TriggerServerEvent("codem-appearance:LoadSavedClothings")
    TriggerServerEvent("codem-appearance:LoadUnpaidOutfits")
    local playerName = TriggerCallback("codem-appearance:GetPlayerName")
    local pp = TriggerCallback("codem-appearance:GetPlayerPP")
    NuiMessage("SET_PLAYER_NAME", playerName)
    NuiMessage("SET_OUTFIT_PRICE", Config.Clothing.price)
    NuiMessage("SET_SURGERY_PRICE", Config.Surgery.price)
    NuiMessage("SET_LOCALES", Config.Locale)
    NuiMessage("SET_DEFAULT_IMAGE", Config.DefaultImage)
    NuiMessage("SET_PED_PAGE", Config.PedPage)
    NuiMessage("SET_SERVER_ID", GetPlayerServerId(PlayerId()))
    NuiMessage("SET_PLAYER_PP", pp)
    LoadPlayerInformations()
end)

RegisterNUICallback("changePedModel", function(data, cb)
    local model = GetHashKey(data.model) 
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(0)
    end
    SetPlayerModel(PlayerId(), model)
    SetModelAsNoLongerNeeded(model)
end)

RegisterNUICallback("randomize", function(data, cb)
    TriggerEvent("skinchanger:getData", function(components, max)      
        for key,v in pairs(components) do
            if v.name ~= 'sex' and v.name ~= 'mask_1' and v.name ~= 'mask_2' and v.name ~= 'helmet_1' and v.name ~= 'helmet_2' and v.name ~= 'bags_1' and v.name ~= 'bags_2' then
                local value = 0
                if tonumber(v.min) > tonumber(max[v.name])  then
                    value = v.min
                else
                    value = math.random(v.min, max[v.name])
                end
                local modelType = 'female'
                if IsPedMale(PlayerPedId()) then
                    modelType = 'male'
                end
                if Config.Blacklisted[modelType][v.name] then
                    local check = true
                    TriggerEvent('skinchanger:getSkin', function(sskin)
                        local isBlacklisted = false
                        for _,item in pairs(Config.Blacklisted[modelType][v.name]) do
                            if item == tonumber(value) then
                                isBlacklisted = true
                            end
                        end
                        while isBlacklisted do
                            Wait(0)
                            if tonumber(v.min) > tonumber(max[v.name]) then
                                value = v.min + 1
                            else
                                value = math.random(v.min, max[v.name])
                            end
                            local blacklisted = false
                            for _,item in pairs(Config.Blacklisted[modelType][v.name]) do
                                if item == tonumber(value) then
                                    blacklisted = true
                                end
                            end
                            isBlacklisted = blacklisted
                        end
                        check = false
                    end)
                    while check do
                        Wait(0)
                    end
                end
                TriggerEvent("skinchanger:change", v.name, tonumber(value))
            end
        end
        local skin = GetSkin()
        NuiMessage("SET_SKIN",  skin)  
    end)
    
end)
local textUICache = false 

function ShowHelpNotification(text)
    if Config.TextUIHandler == 'default' then
        AddTextEntry('helpNotification', text)
        DisplayHelpTextThisFrame('helpNotification', false)
    end
    if not textUICache then
        if Config.TextUIHandler == 'esx_textui' then
            TriggerEvent('ESX:TextUI', text)
        end
        if Config.TextUIHandler == 'qb_default_textui' then
            TriggerEvent('qb-core:client:DrawText', text, 'left')
        end
    
        if Config.TextUIHandler == 'custom' then
            -- Your code here
        end
        textUICache = true
    end
end

function HideHelpNotification()
    if textUICache then
        if Config.TextUIHandler == 'esx_textui' then
            TriggerEvent('ESX:HideUI')
        end
        if Config.TextUIHandler == 'qb_default_textui' then
            TriggerEvent('qb-core:client:HideText')
        end
        if Config.TextUIHandler == 'custom' then
            -- Your code here
        end
        textUICache = false
    end
end

function Close()

    SetNuiFocus(false, false)
    DisableCam()
    DisplayRadar(true)
    accessoryCache = {}
 
    menuOpen = false
   
    ClearPedTasks(PlayerPedId())
    ResetBasket()
    prevSkin = {}
    tattooBasket = {}
    if currentCharacterPage ~= 'job' then
        local skin = TriggerCallback("codem-appearance:GetSkin")
        if Config.Framework == 'qb' or Config.Framework == 'oldqb' then
            skin = FormatQBCoreData(skin)
        end
        TriggerEvent('skinchanger:loadSkin', skin)
    end
    TriggerEvent("codem-appearance:LoadTattoos", currentTattoos)
    currentCharacterPage = false
    Config.OnMenuClose()

end