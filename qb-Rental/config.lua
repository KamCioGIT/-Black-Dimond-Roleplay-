Config = {}

Config.RentalLocations = {
    [1] = {
        name = 'prision',
        pedcoords = vector4(1852.1954, 2582.2512, 45.6726, 273.8113),
        icon = 'fas fa-clipboard',
        ped = 'a_m_y_hipster_03',
        scenario = "WORLD_HUMAN_CLIPBOARD",
        blip = 326,
        blipcolor = 50,
        label = 'Car Rental',
		target = {
			options = {
				{
					type = "client",
					event = "ksuie-vehrental:Client:OpenCarMenu",
					icon = "fas fa-clipboard",
					label = "Rent Car",
					targeticon = 'fas fa-clipboard',
                    position = 1,
                    params = {location = 'prision'}
				},
                {
					type = "client",
					event = "ksuie-vehrental:Client:ReturnCar",
					icon = "fas fa-clipboard",
					label = "Return Car",
					targeticon = 'fas fa-clipboard',
                    position = 2,
                    params = {location = 'prision'}

				},
			},
			distance = 2.0
		},
    },
    [2] = {
        name = 'paleto',
        pedcoords = vector4(-214.48, 6355.65, 31.49, 136.78),
        icon = 'fas fa-clipboard',
        ped = 'a_m_y_hipster_03',
        scenario = "WORLD_HUMAN_CLIPBOARD",
        blip = 326,
        blipcolor = 50,
        label = 'Car Rental',
		target = {
			options = {
				{
					type = "client",
					event = "ksuie-vehrental:Client:OpenCarMenu",
					icon = "fas fa-clipboard",
					label = "Rent Car",
					targeticon = 'fas fa-clipboard',
                    position = 1,
                    params = {location = 'paleto'}
				},
                {
					type = "client",
					event = "ksuie-vehrental:Client:ReturnCar",
					icon = "fas fa-clipboard",
					label = "Return Car",
					targeticon = 'fas fa-clipboard',
                    position = 2,
                    params = {location = 'paleto'}

				},
			},
			distance = 2.0
		},
    },
    [3] = {
        name = 'airport',
        pedcoords = vector4(-1027.4825, -2659.7830, 13.8308, 126.5407),
        icon = 'fas fa-clipboard',
        ped = 'a_m_y_hipster_03',
        scenario = "WORLD_HUMAN_CLIPBOARD",
        blip = 326,
        blipcolor = 50,
        label = 'Car Rental',
		target = {
			options = {
				{
					type = "client",
					event = "ksuie-vehrental:Client:OpenCarMenu",
					icon = "fas fa-clipboard",
					label = "Rent Car",
					targeticon = 'fas fa-clipboard',
                    position = 1,
                    params = {location = 'airport'}
				},
                {
					type = "client",
					event = "ksuie-vehrental:Client:ReturnCar",
					icon = "fas fa-clipboard",
					label = "Return Car",
					targeticon = 'fas fa-clipboard',
                    position = 2,
                    params = {location = 'airport'}

				},
			},
			distance = 2.0
		},
    },
    [4] = {
        name = 'legion',
        pedcoords = vector4(109.361, -1089.839, 29.302, 346.365),
        icon = 'fas fa-clipboard',
        ped = 'a_m_y_hipster_03',
        scenario = "WORLD_HUMAN_CLIPBOARD",
        blip = 326,
        blipcolor = 50,
        label = 'Car Rental',
		target = {
			options = {
				{
					type = "client",
					event = "ksuie-vehrental:Client:OpenCarMenu",
					icon = "fas fa-clipboard",
					label = "Rent Car",
					targeticon = 'fas fa-clipboard',
                    position = 1,
                    params = {location = 'legion'}
				},
                {
					type = "client",
					event = "ksuie-vehrental:Client:ReturnCar",
					icon = "fas fa-clipboard",
					label = "Return Car",
					targeticon = 'fas fa-clipboard',
                    position = 2,
                    params = {location = 'legion'}

				},
			},
			distance = 2.0
		},
    },
    --[[ [2] = {
        name = 'airport',
        pedcoords = vector4(-1036.67, -2682.75, 14.07-1, 335.81),
        icon = 'fas fa-clipboard',
        ped = 'a_m_y_hipster_03',
        scenario = "WORLD_HUMAN_CLIPBOARD",
        blip = 724,
        blipcolor = 32,
        label = 'Car Rental',
		target = {
			options = {
				{
					type = "client",
					event = "ksuie-vehrental:Client:OpenCarMenu",
					icon = "fas fa-clipboard",
					label = "Rent Car",
					targeticon = 'fas fa-clipboard',
                    position = 1,
                    params = {location = 'airport'}

				},
                {
					type = "client",
					event = "ksuie-vehrental:Client:ReturnCar",
					icon = "fas fa-clipboard",
					label = "Return Car",
					targeticon = 'fas fa-clipboard',
                    position = 2,
                    params = {location = 'airport'}

				},
			},
			distance = 2.0
		},
    },
    [3] = {
        name = 'docks',
        pedcoords = vector4(-990.41, -1406.41, 1.6-1, 198.76),
        icon = 'fas fa-clipboard',
        ped = 'a_m_y_hipster_03',
        scenario = "WORLD_HUMAN_CLIPBOARD",
        blip = 724,
        blipcolor = 410,
        label = 'Boat Rental',
		target = {
			options = {
				{
					type = "client",
					event = "ksuie-vehrental:Client:OpenBoatMenu",
					icon = "fas fa-clipboard",
					label = "Rent Boat",
					targeticon = 'fas fa-clipboard',
                    position = 1,
                    params = {location = 'docks'}

				},
                {
					type = "client",
					event = "ksuie-vehrental:Client:ReturnCar",
					icon = "fas fa-clipboard",
					label = "Return Boat",
					targeticon = 'fas fa-clipboard',
                    position = 2,
                    params = {location = 'docks'}
				},
			},
			distance = 2.0
		},
    }, ]]
}

Config.RentalCars = {
    ["faggio2"] = {
        name = "Faggio Bike",
        price = 250,
    },
    ["blista3"] = {
        name = "Dinka Blista Compact",
        price = 400
    },
    ["rancherxl"] = {
        name = "Rancher XL SUV",
        price = 1000
    },
    ["stretch"] = {
        name = "Limo",
        price = 10000
    },
}

Config.BoatRental = {
    ["seashark"] = {
        name = "Jet Ski",
        price = 500
    },
    ["jetmax"] = {
        name = "Small Ski Boat",
        price = 1000
    },
    ["tropic"] = {
        name = "Cruiser",
        price = 1500
    },
    ["marquis"] = {
        name = "Sail Boat",
        price = 2000
    },
    ["suntrap"] = {
        name = "Jet Boat",
        price = 2500
    },
    ["longfin"] = {
        name = "Big Ski Boat",
        price = 3000
    },
    ["speeder"] = {
        name = "Large Cruiser",
        price = 5000
    },
    ["toro"] = {
        name = "Fancy Cruiser",
        price = 6000
    },
}

Config.SpawnSlots = {
    ['prision'] = {
        slot1 = {coords = vector4(1854.62, 2578.74, 45.67, 267.22), occupied = false},
    },
    ['paleto'] = {
        slot1 = {coords = vector4(-217.8561, 6348.7910, 31.6978, 222.4448), occupied = false},
    },
    ['airport'] = {
        slot1 = {coords = vector4(-1038.3280, -2667.5757, 13.8308, 241.6562), occupied = false},
    },
    ['legion'] = {
        slot1 = {coords = vector4(104.49, -1078.84, 29.19, 339.46), occupied = false},
        slot2 = {coords = vector4(107.75, -1079.93, 29.19, 341.92), occupied = false},
        slot3 = {coords = vector4(111.24, -1081.28, 29.19, 336.82), occupied = false}
    },
    ['airport2'] ={
        slot1 = {coords = vector4(-1039.0, -2679.08, 13.83, 326.13), occupied = false},
        slot2 = {coords = vector4(-1041.95, -2676.55, 13.83, 321.46), occupied = false},
        slot3 = {coords = vector4(-1044.79, -2674.37, 13.83, 321.08), occupied = false}
    },
    ['docks'] = {
        slot1 = {coords = vector4(-999.63, -1399.68, 1.57, 20.53), occupied = false},
        slot2 = {coords = vector4(-991.53, -1395.81, 1.57, 13.28), occupied = false},
        slot3 = {coords = vector4(-982.48, -1392.92, 1.57, 25.17), occupied = false}
    },
}