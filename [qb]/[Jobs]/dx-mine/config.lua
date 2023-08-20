Config = {
    pricexd = {
        -- ['item'] = {min, max} --
        coal = math.random(5, 8),
        kno3 = math.random(8, 10),
        sulfur = math.random(10, 12),
        diamond = math.random(500, 550),
        emerald = math.random(600, 650)
    },
    ChanceToGetItem = 20, -- if math.random(0, 100) <= ChanceToGetItem then give item
    Items = {'coal','coal','coal','coal','coal','coal','coal','coal','kno3', 'kno3', 'kno3', 'kno3', 'kno3', 'kno3', 'sulfur', 'sulfur', 'sulfur', 'sulfur', 'diamond', 'emerald','coal','coal','coal','kno3', 'kno3','sulfur','coal','coal','coal','kno3', 'kno3', 'sulfur'},
    Sell = vector3(-97.12, -1013.8, 26.3),
    Objects = {
        ['pickaxe'] = 'prop_tool_pickaxe',
    },
    MiningPositions = {
        {coords = vector3(2992.77, 2750.64, 42.78), heading = 209.29},
        {coords = vector3(2983.03, 2750.9, 42.02), heading = 214.08},
        {coords = vector3(2976.74, 2740.94, 43.63), heading = 246.21},
        {coords = vector3(2934.265, 2742.695, 43.1), heading = 96.1},
        {coords = vector3(2907.25, 2788.27, 45.4), heading = 109.39}
    },
}

Strings = {
    ['press_mine'] = 'Press ~INPUT_CONTEXT~ to mine.',
    ['mining_info'] = 'Press ~INPUT_ATTACK~ to chop, ~INPUT_FRONTEND_RRIGHT~ to stop.',
    ['you_sold'] = 'Sold verkocht %sx %s for %s',
    ['e_sell'] = 'Press ~INPUT_CONTEXT~ to sell materials from the mine.',
    ['someone_close'] = 'Citizen too close!',
    ['mining'] = 'Mining place',
    ['sell_mine'] = 'Sellpoint Mining'
}