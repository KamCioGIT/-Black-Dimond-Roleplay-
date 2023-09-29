--[[ 
    Events for Tuff's wheelstancer script, open source for personal testing and modifications.
    If you are interested in this script you should visit the store https://tuff-scripts.tebex.io/
]]

RegisterServerCallback('advancedgarages:server:GetStanceValues', function(_, cb, plate)
    local stance_value = nil
    local result = MySQL.query.await('SELECT stance_value FROM ' .. garageTable .. ' WHERE plate = ?', { plate })

    print("Result from the database:", json.encode(result), "Database plate:", plate)

    if result[1] ~= nil then
        stance_value = json.decode(result[1].stance_value)
    end

    cb(stance_value)
end)