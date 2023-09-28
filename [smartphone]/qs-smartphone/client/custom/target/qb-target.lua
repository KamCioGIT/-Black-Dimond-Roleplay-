if Config.Target and Config.TargetScript ~= 'qb-target' then
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
    exports['qb-target']:AddTargetEntity(crafter, { 
        options = {
            {
                num = 1,
                label = 'Telephone Technician',
                icon = 'fa-solid fa-microchip',
                action = function()
                    TriggerEvent("qs-smartphone:OpenTechMenu")
                end,
            }
        },
        distance = 2.5,
    })  
end

function OpenBoothMenu()
    exports['qb-target']:AddTargetModel(Config.listBooth, { 
        options = {
            {
                num = 1,
                label = 'Telephone Booth',
                icon = 'fa-solid fa-phone',
                action = function(entity) -- This is the action it has to perform, this REPLACES the event and this is OPTIONAL
                    TriggerEvent("qs-smartphone:openBoothTarget")
                end,
            }
        },
        distance = 2.5,
    }) 
end