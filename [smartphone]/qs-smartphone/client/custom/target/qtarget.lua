if Config.Target and Config.TargetScript ~= 'qtarget' then
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
    exports.qtarget:AddTargetEntity(crafter, {
        options = {
            {
                label = 'Telephone Technician',
                icon = 'fa-solid fa-microchip',
                action = function()
                    TriggerEvent("qs-smartphone:OpenTechMenu")
                end
            }
        },
        distance = 2
    }) 
end

function OpenBoothMenu()
    exports.qtarget:AddTargetModel(Config.listBooth, {
        options = {
            {
                label = 'Telephone Booth',
                icon = 'fa-solid fa-phone',
                action = function()
                    TriggerEvent("qs-smartphone:openBoothTarget")
                end
            }
        },
        distance = 1.0
    }) 
end