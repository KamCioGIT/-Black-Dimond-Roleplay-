Config = {}

Config.PawnLocation = vector3(412.34, 314.81, 103.13)
Config.BankMoney = false -- Set to true if you want the money to go into the players bank
Config.UseTimes = false -- Set to false if you want the pawnshop open 24/7
Config.TimeOpen = 7 -- Opening Time
Config.TimeClosed = 17 -- Closing Time
Config.SendMeltingEmail = true

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

Config.PawnItems = {
    [1] = {
        item = "goldchain",
        price = math.random(250,450)
    },
    [2] = {
        item = "diamond_ring",
        price = math.random(350,400)
    },
    [3] = {
        item = "rolex",
        price = math.random(150,200)
    },
    [4] = {
        item = "10kgoldchain",
        price = math.random(240,320)
    },
    [5] = {
        item = "tablet",
        price = math.random(50,100)
    },
    [6] = {
        item = "iphone",
        price = math.random(50,100)
    },
    [7] = {
        item = "samsungphone",
        price = math.random(50,100)
    },
    [8] = {
        item = "laptop",
        price = math.random(50,100)
    },
    [9] = {
        item = "ps5",
        price = math.random(300,600)
    },
    [10] = {
        item = "ps2",
        price = math.random(200,250)
    },
    [11] = {
        item = "xboxx",
        price = math.random(320,650)
    },
    [12] = {
        item = "gamecube",
        price = math.random(200,325)
    },
    [13] = {
        item = "actionfigure",
        price = math.random(400,600)
    },
    [14] = {
        item = "awp",
        price = math.random(170,300)
    }
}

Config.MeltingItems = { -- meltTime is amount of time in minutes per item
    [1] = {
        item = "goldchain",
        rewards = {
            [1] = {
                item = "goldbar",
                amount = 2
            }
        },
        meltTime = 0.15
    },
    [2] = {
        item = "diamond_ring",
        rewards = {
            [1] = {
                item = "diamond",
                amount = 1
            },
            [2] = {
                item = "goldbar",
                amount = 1
            }
        },
        meltTime = 0.15
    },
    [3] = {
        item = "rolex",
        rewards = {
            [1] = {
                item = "diamond",
                amount = 1
            },
            [2] = {
                item = "goldbar",
                amount = 1
            },
            [3] = {
                item = "electronickit",
                amount = 1
            }
        },
        meltTime = 0.15
    },
    [4] = {
        item = "10kgoldchain",
        rewards = {
            [1] = {
                item = "diamond",
                amount = 5
            },
            [2] = {
                item = "goldbar",
                amount = 1
            }
        },
        meltTime = 0.15
    },
}
