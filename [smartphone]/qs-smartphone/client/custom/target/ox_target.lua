if Config.Target and Config.TargetScript ~= 'ox_target' then
    return
end
 
Config.listBooth = {
    1158960338,
    1511539537,
    1281992692,
    -429560270,
    -1559354806,
    -78626473,
    -2103798695,
    295857659,
}

function OpenTechMenu(crafter)
    local options = {
        {
            name = 'qs:tech',
            label = 'Telephone Technician',
            icon = 'fa-solid fa-microchip',
            onSelect = function()
                TriggerEvent("qs-smartphone:OpenTechMenu")
            end
        },
    }
    exports.ox_target:addLocalEntity(crafter, options)
end

function OpenBoothMenu()
    local options = {
        {
            name = 'qs:booth',
            label = 'Telephone Booth',
            icon = 'fa-solid fa-phone',
            onSelect = function()
                TriggerEvent("qs-smartphone:openBoothTarget")
            end
        },
    }
    exports.ox_target:addModel(Config.listBooth, options) 
end