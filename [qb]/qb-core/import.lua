-- This might eventually be deprecated for the export system

if GetCurrentResourceName() == 'qb-core' then
    --function GetSharedObject()
    function GetCoreObject()
        return QBCore
    end

    exports('GetCoreObject', GetCoreObject)
    --exports('GetSharedObject', GetSharedObject)
end

--QBCore = exports['qb-core']:GetSharedObject()
QBCore = exports['qb-core']:GetCoreObject()