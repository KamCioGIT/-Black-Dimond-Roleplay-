local Result = nil
local NUI_status = false

RegisterNetEvent('kwk-lockpick:client:openLockpick')
AddEventHandler('kwk-lockpick:client:openLockpick', function(callback)
    lockpickCallback = callback
    exports['qb-lock']:StartLockPickCircle(total) 
end)

function StartLockPickCircle(callback)
    Result = nil
    NUI_status = true
    SendNUIMessage({
        action = 'start',
        value = math.random(4, 7),
    })
    while NUI_status do
        Wait(5)
        SetNuiFocus(NUI_status, false)
    end
    Wait(100)
    SetNuiFocus(false, false)
    lockpickCallback = callback
    return Result
end

RegisterNUICallback('fail', function()
        ClearPedTasks(PlayerPedId())
        Result = false
        Wait(100)
        NUI_status = false
end)

RegisterNUICallback('success', function()
	Result = true
	Wait(100)
	NUI_status = false
    SetNuiFocus(false, false)
    return Result
end)