-- ENTIRE SCRIPT MADE BY OSMIUM#0001 | DISCORD.IO/OSMFX 
-- This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/ or send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA. 

CRConfig = {}

CRConfig.RefreshCars = 5 -- MINUTES AFTER WHICH EMPTY CAR SLOTS GET REFILLED

CRConfig.DriveTime = 60 -- MINUTES AFTER PERSON WILL BE CHARGED AGAIN 

CRConfig.NonPayment = 3 -- IN CASE OF NON-PAYMENT(LOW CASH/BANK) CAR WILL BE DELETED IN THESE MINUTES!

-- RENTING CAR POSITIONS

CRConfig.RentingPositions = {
    -- PILLBOX

    [1] = {
        coords = {
            x = -880.324, y = -1202.85, z = 3.87, h = 31.48 
        },
        vehicle = "panto",
        buying = false,
        rentcost = 100,
    }, 
    [2] = {
        coords = { 
            x = -882.72, y = -1204.78, z =3.87, h = 41.48
        },
        vehicle = "bmx",
        buying = false,
        rentcost = 50,
    }, 
    [3] = {
        coords = {
            x = -877.31, y = -1201.7, z = 3.87, h = 31.63
        },
        vehicle = "faggio2",
        buying = false,
        rentcost = 100,
    },  
    
    -- GARAGE NEAR MOTELS

    [4] = {
        coords = {
            x = 301.01171875, y = -330.37561035156, z = 43.919872283936, h = 74.321479797363
        },
        vehicle = "panto",
        buying = false,
        rentcost = 100,
    },  
-- Prison
    [5] = {
        coords = {
            x = 1854.19, y = 2620.54, z =  44.67, h = 266.5
        },
        vehicle = "panto",
        buying = false,
        rentcost = 100,
    }, 
}

-- LARGE BLUE TEXT SPOTS and RENTAL LOCATIONS
CRConfig.RentalSpots = {
    [1] = {
        coords = {
            x = -880.324, y = -1202.85, z = 4.87, h = 31.48
        },
    }, 
    [2] = {
        coords = {
            x = 301.01171875, y = -330.37561035156, z = 44.919872283936, h = 74.321479797363
        },
    }, 
    [3] = {
        coords = {
            x = 1854.19, y = 2620.54, z =  44.67, h = 266.5
        },
    },
}

-- CHARGES CUSTOMER EXTRA IF CAR BODY IS DAMAGED

CRConfig.DamageCharges = {
    enable = true, -- ENABLE / DISABLE FEATURE
    charges = 1500, -- FOR DAMAGED BODY
    appreciation = 50, -- REWARD FOR GOOD CAR CONDITION
}

-- TEXT COLOURS

CRConfig.PrimaryColor = {r = 51, g = 136, b = 255, a = 255} -- Use RGB color picker
CRConfig.SecondaryColor = {r = 33, g = 244, b = 218, a = 255} -- Use RGB color picker	

--CRConfig.Release = 1.0.0