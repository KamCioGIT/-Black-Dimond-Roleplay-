
## Support

If you require any form of support after buying this resource, the right place to ask is our 
Discord Server: https://discord.kiminaze.de

Make sure to react to the initial message with the tick and your language to get access to all 
the different channels. After that you have to request your scripts role in the appropriate channel 
by using your cfx.re username and the script you just purchased. Soon after that you will receive 
your role and get access to the channels that are specifically for this script.

Please do not contact anyone directly unless you have a really specific request that does not have 
a place in the server.


## What does it do exactly?

If a player enters a vehicle, it will be registered in the database as a saved vehicle. The vehicle 
will always stay at the last location where it has been left by a player. If it despawns while 
players are too far away from it or after a server restart, the script will respawn the vehicle on 
server side as soon as a player gets close enough. This also means no more "despawns" when looking 
away for a second.

All vehicle modifications and statuses are saved (check [saved values](#saved-values) for more 
information) and will be reapplied upon respawning.

Vehicles that have been saved are completely dynamic. You can push a saved vehicle with a bulldozer 
and it will update accordingly. This all happens on server side and requires minimal performance.


## Requirements

- OneSync
- [MySQL Async Library](https://forum.cfx.re/t/release-mysql-async-library-3-3-2/21881) or [OxMySQL](https://forum.cfx.re/t/standalone-oxmysql-lightweight-mysql-wrapper/4755120)
- [kimi_callbacks](https://forum.cfx.re/t/release-callbacks-using-exports-and-with-added-timeouts-free/3035585)


## Features

- **All vehicles** a player has entered will be **saved**.
  - Configurable vehicle **class**, **model** and **plate blacklist**.
- Vehicles will **respawn automatically** when players get close and the vehicle isn't there.
- Vehicles will **respawn after a server restart**.
- Vehicles that have been saved are **completely dynamic**. They can be moved and take damage.
- Vehicle spawning happens on server side.
- Attached **trailers** will be saved automatically.
- Option to **save only player owned vehicles** (requires **ESX** or **QB**).
- **Cleanup function** takes care of vehicles that haven't been updated.
  - Configurable time threshold.
  - Option to send cleaned up vehicles to the player garage (requires **ESX** or **QB**).
- Non-networked (or client side only) vehicles will be ignored.
- Can be restarted any time.
- **Delete function** that will delete **any** vehicle where a player is not close enough every X 
  minutes (turned off by default). This is only meant for servers that have an over-abundance of 
  (modded) vehicles where it could have a negative impact on performance (e.g. 200+ players + NPC 
  vehicles).
- Admin command for deleting all vehicles from the database table.
- **Exports** for receiving the position of vehicles from server and client side.


## Saved values

While this script aims to save all variables of a vehicle, some of them can not yet be updated on 
server side and will only be updated when entering/leaving the vehicle. The dynamic variables are 
marked with an **(S)** for ease of reading.

- Position and rotation **(S)**
- Status:
  - Entity, body, engine **(S)** and petrol tank **(S)** health
  - Dirt Level
  - Fuel Level (includes compatibility with "LegacyFuel")
  - Door lock status **(S)**
  - Burst/flat tires
  - Missing doors
  - Broken windows
- Tuning:
  - Number plate text
  - Modifications from 0-49 (except 17, 19 and 21 (possibly HSW mods that aren't in the game yet))
    - Visual and performance mods
  - Colors
    - Primary and secondary
    - Custom primary and secondary (RGB)
    - Pearlescent
    - Interior
    - Dashboard
    - Tiresmoke
    - Window tint
  - Lights
    - Xenon color
    - Neonlights color
    - Enabled neons
  - Extras
  - Wheels
    - Type
    - Custom
    - Bulletproof
    - Color
    - Drift Tires
  - Livery (from mods, extra livery and roof livery)
- Entity state bags **(S)**


## Performance

- Client Side: 0.00 idle and up to 0.01ms while inside vehicle or spawning vehicle
- Server Side: 0.00-0.01ms


## Installation instructions

Note: Updating from any release before v3.0.0 requires you to delete the database table 
      `vehicle_parking` once! Saved data is __not__ compatible with the new version.

1. Download the script from your keymaster website and extract it into your resources folder.
2. Download and install mysql-async or OxMySQL (can be skipped if using ESX or QB).
3. Download kimi_callbacks and extract it into your resources folder.
4. Start the resource in your server.cfg:
    ```
    ensure AdvancedParking
    ```


## What to do to ensure compatibility with other scripts?

- Deleting vehicles has been made easier by introducing the file `fixDeleteVehicle.lua`. Drop it 
  into the folder of a resource that does not delete vehicles properly including `es_extended` or 
  `QBCore`. Then add the following line inside the fxmanifest of that resource right above the 
  other `server/client/shared_script(s)` lines.
    ```lua
    shared_script "fixDeleteVehicle.lua"
    ```

- If you are not using the mentioned file above for whatever reason, you will have to replace 
  `DeleteVehicle` and `DeleteEntity` natives with this export:
    ```lua
    exports["AdvancedParking"]:DeleteVehicle(vehicle)
    ```

- Updating a vehicles plate requires APs export to be triggered:
    ```lua
    -- from client side
    exports["AdvancedParking"]:UpdatePlate(vehicle, newPlate)

    -- from server side
    exports["AdvancedParking"]:UpdatePlate(vehicleNetworkId, newPlate)
    ```
    This is necessary for e.g. License Plate Changer scripts. Just directly replace 
    `SetVehicleNumberPlateText` with `exports["AdvancedParking"]:UpdatePlate` without changing the 
    value in brackets on client side.


## Command Usage

- Delete all vehicles from the database (needs to be executed twice):
    ```
    /deleteSavedVehicles
    ```

- Toggle individual log levels at runtime:
    ```
    /AdvancedParking:log [info|warning|error|debug]
    ```


## Export Usage

- Get a single vehicles position (server and client)
    ```lua
    local position = exports["AdvancedParking"]:GetVehiclePosition(plate)
    print(plate .. ": " .. tostring(position))
    ```

- Get position of several vehicles (you can use an infinite amount of plates) (server and client)
    ```lua
    local positions = exports["AdvancedParking"]:GetVehiclePositions(plate1, plate2, plate3)
    for plate, position in pairs(positions) do
        print(plate .. ": " .. tostring(position))
    end
    ```

- Delete a vehicle (short & easy method) (server & client)
  - keepInWorld when set to true will only delete the vehicle from APs table and keep it ingame!
    ```lua
    exports["AdvancedParking"]:DeleteVehicle(vehicle, keepInWorld)
    ```

- Delete a vehicle without access to the entity (at least one value needed) (server & client)
  - keepInWorld when set to true will only delete the vehicle from APs table and keep it ingame!
    ```lua
    -- how to usually get the required values from an entity
    local identifier = Entity(vehicle).state.ap_id
    local networkId = NetworkGetNetworkIdFromEntity(vehicle)
    local plate = GetVehicleNumberPlateText(vehicle)

    -- trying to delete using those values
    -- client side version
    exports["AdvancedParking"]:DeleteVehicleOnServer(identifier, networkId, plate, keepInWorld)
    -- server side version
    exports["AdvancedParking"]:DeleteVehicleUsingData(identifier, networkId, plate, keepInWorld)
    ```

- Manually update a vehicle (client)
    ```lua
    exports["AdvancedParking"]:UpdateVehicle(vehicle)
    ```

- Enable/disable saving vehicles for a client (client)
    ```lua
    exports["AdvancedParking"]:Enable(enable)
    ```

- Ensures state bag on an entity (returns true when successful) (server)
    ```lua
    exports["AdvancedParking"]:EnsureStateBag(vehicle, bagKey)
    ```

- Get a vehicle handle from a state bag value (also works with tables as value) (server)
    ```lua
    exports["AdvancedParking"]:GetVehicleFromStateBagValue(bagKey, bagValue)
    ```

- Gets a vehicles state bags. Vehicle needs to be already saved. (server)
    ```lua
    exports["AdvancedParking"]:GetStateBagsFromVehicle(vehicle)
    ```

- Gets a vehicles state bags using its plate. Vehicle needs to be already saved. (server)
    ```lua
    exports["AdvancedParking"]:GetStateBagsFromPlate(plate)
    ```


## Event Handler Usage

- Triggered when a vehicle is spawned on client side
    ```lua
    AddEventHandler("AP:vehicleSpawned", function(networkId)
        -- get vehicle from network id and check if it exists
        if (not NetworkDoesEntityExistWithNetworkId(networkId)) then
            return
        end
        local vehicle = NetworkGetEntityFromNetworkId(networkId)
        if (not DoesEntityExist(vehicle)) then
            return
        end

        -- your own code here
        print("Vehicle " .. GetVehicleNumberPlateText(vehicle) .. " spawned")
    end)
    ```

- Triggered when a vehicle is spawned on server side
    ```lua
    AddEventHandler("AP:vehicleSpawned", function(vehicle)
        -- your own code here
        print("Vehicle " .. GetVehicleNumberPlateText(vehicle) .. " spawned")
    end)
    ```


## Patchnotes

Can now be found on [Github](https://github.com/Kiminaze/version_history/blob/main/AdvancedParking.json)
