Config = {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.Jobs = {
    ["electrician"] = "Electrician"
}

Config.Locations = {
    jobs = {
        ["electrician"] = {
            [1] = {
                coords = vector4(1766.85, 2531.33, 45.55, 214.17),
            },
            [2] = {
                coords = vector4(1718.66, 2488.9, 45.55, 184.72),
            },
            [3] = {
                coords = vector4(1668.2, 2488.75, 45.55, 180.5),
            },
            [4] = {
                coords = vector4(1619.02, 2521.47, 45.55, 138.09),
            },
            [5] = {
                coords = vector4(1617.54, 2578.47, 45.55, 87.86),
            },
            [6] = {
                coords = vector4(1652.59, 2564.4, 45.55, 357.72),
            },
            [7] = {
                coords = vector4(1763.56, 2565.65, 45.55, 355.79),
            }
        }
    },
    ["freedom"] = {
        coords = vector4(1837.25, 2595.68, 46.01, 124.42)
    },
    ["outside"] = {
        coords = vector4(1837.64, 2585.67, 46.01, 273.47)
    },
    ["yard"] = {
        coords = vector4(1765.67, 2565.91, 45.56, 1.5)
    },
    ["middle"] = {
        coords = vector4(1693.33, 2569.51, 45.55, 123.5)
    },
    ["shop"] = {
        coords = vector4(1785.91, 2557.15, 45.67, 353.0)
    },
    spawns = {
        [1] = {
            animation = "bumsleep",
            coords = vector4(1753.54, 2541.06, 46.35, 26.95)
        },
        [2] = {
            animation = "lean",
            coords = vector4(1741.59, 2502.77, 45.83, 342.18)
        },
        [3] = {
            animation = "lean",
            coords = vector4(1712.44, 2523.05, 45.55, 299.32)
        },
        [4] = {
            animation = "lean",
            coords = vector4(1718.22, 2536.8, 45.55, 213.22)
        },
        [5] = {
            animation = "sitchair4",
            coords = vector4(1726.66, 2536.47, 45.55, 114.58)
        },
        [6] = {
            animation = "sitchair",
            coords = vector4(1731.49, 2526.9, 45.55, 95.45)
        },
        [7] = {
            animation = "sitchair4",
            coords = vector4(1697.84, 2504.91, 45.56, 88.69)
        },
        [8] = {
            animation = "finger2",
            coords = vector4(1746.22, 2548.69, 45.55, 115.27)
        },
        [9] = {
            animation = "smoke",
            coords = vector4(1715.56, 2568.77, 45.55, 214.74)
        },
        [10] = {
            animation = "smoke",
            coords = vector4(1656.6, 2548.82, 45.55, 344.97)
        },
        [11] = {
            animation = "smoke",
            coords = vector4(1627.06, 2553.94, 45.55, 275.55)
        }
    }
}

Config.CanteenItems = {
    [1] = {
        name = "sandwich",
        price = 4,
        amount = 50,
        info = {},
        type = "item",
        slot = 1
    },
    [2] = {
        name = "water_bottle",
        price = 4,
        amount = 50,
        info = {},
        type = "item",
        slot = 2
    }
}
