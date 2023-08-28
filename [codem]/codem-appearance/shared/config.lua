Config = {}
Config.Framework = 'autodetect' -- esx, oldesx, qb, oldqb or autodetect
Config.SQL = "oxmysql" -- oxmysql, ghmattimysql, mysql-async
Config.PedPage = true -- false disabled true enabled ped page
Config.DefaultImage = 'https://cdn.discordapp.com/attachments/858833601226080286/1108105906132103178/testpp.png'
Config.CamCoolDown = 350 -- 0.350 seconds (a cool down to prevent the game from crashing when changing camera)

Config.Blacklisted = {
    male = {
        torso_1 = {3, 4, 5, 6, 8, 10},
        torso_2 = {},
    },
    female = {
        torso_1 = {3, 4, 5, 6, 8, 10},
        torso_2 = {},
    },
}
Config.ReloadCommand = 'reload'

Config.OnCharacterCreated = function()

end

Config.OnMenuOpen = function()
    TriggerEvent("mHud:HideHud")
    HidePlayers()
end

Config.OnMenuClose = function()
    TriggerEvent("mHud:ShowHud")
end



Config.TextUIHandler = 'default' -- default, esx_textui, qb_default_textui, custom
Config.Surgery = {
    price = 500,
    coords = {
        vector3(290.5751, -1443.4, 29.9665)
    },
    blip = {
        size = 0.7,
        type = 102,
        color = 51,
        label = "Surgery",
    },
    openKey = 38, -- https://docs.fivem.net/docs/game-references/controls/
    marker = { 
        enable = true,
        type = 0,
        size = 0.6,
        rgba = {255, 0, 0, 255}   
    },
    drawText = {
        enable = true,
        text = "PRESS ~r~ [E] ~w~ to open surgery"
    },
    textui = {
        enable = true,
        text = "PRESS [E] to open surgery"
    },
}

Config.Barber = {
    prices = {
        hair = 50,
        beard = 50,
        eyebrows = 50,
        makeup = 50,
        blush = 50,
        lipstick = 50,  
    },
    coords = {
        vector3(-814.3, -183.8, 36.6),
        vector3(136.8, -1708.4, 28.3),
        vector3(-1282.6, -1116.8, 6.0),
        vector3(1931.5, 3729.7, 31.8),
        vector3(1212.8, -472.9, 65.2),
        vector3(-32.9, -152.3, 56.1),
        vector3(-278.1, 6228.5, 30.7)
    },
    blip = {
        size = 0.7,
        type = 71,
        color = 51,
        label = "Barber",
    },
    openKey = 38, -- https://docs.fivem.net/docs/game-references/controls/
    marker = {
        enable = true,
        type = 0,
        size = 0.6,
        rgba = {255, 0, 0, 255}   
    },
    drawText = {
        enable = true,
        text = "PRESS ~r~ [E] ~w~ to open barber shop"
    },    
    textui = {
        enable = true,
        text = "PRESS [E] to open barber shop"
    },

}
Config.Tattoo = {
    list = json.decode(LoadResourceFile(GetCurrentResourceName(), '/shared/tattooList.json')),
    coords = {
        vector3(1322.6, -1651.9, 51.2),
        vector3(-1153.6, -1425.6, 4.9),
        vector3(322.1, 180.4, 103.5),
        vector3(-3170.0, 1075.0, 20.8),
        vector3(1864.6, 3747.7, 33.0),
        vector3(-293.7, 6200.0, 31.4)
    },
    blip = {
        size = 0.7,
        type = 75,
        color = 1,
        label = "Tattoo Shop",
    },
    openKey = 38, -- https://docs.fivem.net/docs/game-references/controls/
    marker = {
        enable = true,
        type = 0,
        size = 0.6,
        rgba = {255, 0, 0, 255}   
    },
    drawText = {
        enable = true,
        text = "PRESS ~r~ [E] ~w~ to open tattoo shop"
    },
    textui = {
        enable = true,
        text = "PRESS [E] to open tattoo shop"
    },
}

Config.Clothing = {
    price = 500,
    coords = {
        {
            vector3(72.3, -1399.1, 28.4),       
            "binco" 
        },
        {
            vector3(-703.8, -152.3, 36.4),
            "ponsonbys" 

        },
        {
            vector3(-167.9, -299.0, 38.7),
            "ponsonbys" 

        },
        {
            vector3(428.7, -800.1, 28.5),
            "binco" 

        },
        {        
            vector3(-829.4, -1073.7, 10.3),
            "binco" 

        },
        {
            vector3(-1447.8, -242.5, 48.8),
            "ponsonbys" 

        },
        {
            vector3(11.6, 6514.2, 30.9),
            "binco" 
        
        },
        {
            vector3(123.6, -219.4, 53.6),
            "suburban" 

        },
        {
            vector3(1696.3, 4829.3, 41.1),
            "binco" 

        },
        {
            vector3(618.1, 2759.6, 41.1),
            "suburban" 

        },
        {
            vector3(1190.6, 2713.4, 37.2),
            "binco" 

        },
        {
            vector3(-1193.4, -772.3, 16.3),
            "suburban" 

        },
        {
            vector3(-3172.5, 1048.1, 19.9),
            "suburban" 

        },
        {
            vector3(-1108.4, 2708.9, 18.1)
            "binco" 

        }
    },
    blip = {
        size = 0.7,
        type = 73,
        color = 47,
        label = "Clothing Shop",
    },
    openKey = 38, -- https://docs.fivem.net/docs/game-references/controls/
    marker = {
        enable = true,
        type = 0,
        size = 0.6,
        rgba = {255, 0, 0, 255}   
    },
    drawText = {
        enable = true,
        text = "PRESS ~r~ [E] ~w~ to open clothing shop"
    },
    textui = {
        enable = true,
        text = "PRESS [E] to open clothing shop"
    },
}



Config.Locale = {
    -- CharacterCreation
    ['characterCreationTitle'] =  "CHARACTER CREATION",
    ['characterConfirmationText'] =  "Are you sure about your character ?",
    ['characterConfirmationButtonText'] = "Yes, lets go!.",
    -- Menu's
    ['menuTitleDNA'] = "DNA",
    ['menuTitleBody'] = "BODY",
    ['menuTitleClothes'] = "CLOTHES",
    ['accoseriesTitle'] = 'ACCOSERIES',
    ['menuTitlePeds'] = "PEDS",
    ['menuTitleFace'] = "FACE",
    -- CharacterCreation
 
    ['heightTitle'] = "Height(165cm)",
    ['parentsTitle'] = "Parents",
    ['fatherTitle'] = "Father",
    ['motherTitle'] = "Mother",
    ['inheritanceTitle'] = "Inheritance Mix",
    ['DNANote'] = "Note : You can skip this part and choose your face type on body options as well.",
    ['skinTypeTitle'] = "Skin Type",
    ['skinMixTitle'] = "Skin Mix",
    ['chestHairTitle'] = "Chest Hair",
    ['typeTitle'] = "Type",
    ['colorTitle'] = "Color",
    ['bodyBlemishesTitle'] = "Body Blemishes",
    ['faceTypeTitle'] = "Face Type",
    ['faceMixTitle'] = "Face Mix",
    ['faceNote'] = "Note : Please be aware that if you adjust the face type you will lose your DNA faces.",
    ['faceFeaturesTitle'] = "Face Feautures",
    ['detailsTitle'] = "Details",
    ['strainsTitle'] = "Strains",
    ['makeupTitle'] = "Makeup",
    ['hairTitle'] = "Hair",
    ['hightlightTitle'] = "Highlight",
    ['hightlightColorTitle'] = "Highlight Color",
    ['faceStrainsTitle'] = "Face Strains",
    ['blemishesTitle'] = "Blemishes",
    ['noseTitle'] = "Nose",
    ['noseWidth'] = "Nose Width - 0",
    ['noseHeight'] = "Nose Height - 0",
    ['noseSize'] = "Nose Size - 0",
    ['noseBoneHeight'] = "Nose Bone Height",
    ['nosePeakHeight'] = "Nose Peak Height",
    ['noseTwistHeight'] = "Nose Bone Twist",
    ['eyebrowsTitle'] = "Eyebrows",
    ['eyebrowsHeight'] = "Eyebrows Height",
    ['eyebrowsDepth'] = "Eyebrows Depth",
    ['ageingTitle'] = "Ageing",
    ['cheeksTitle'] = "Cheeks",
    ['cheeksHeight'] = "Cheeks Bone Height ",
    ['cheeksBoneWidth'] = "Cheeks Bone Width ",
    ['cheeksWidth'] = "Cheeks Width ",
    ['eyesMouthTitle'] = "Eyes & Mouth",
    ['eyeColor'] = "Eye Color",
    ['eyesOpening'] = "Eyes Opening ",
    ['lipThickness'] = "Lip Thickness",
    ['beardTitle'] = "Beard",
    ['jawTitle'] = "Jaw",
    ['jawWidth'] = "Jaw Width ",
    ['jawSize'] = "Jaw Size ",
    ['chinTitle'] = "Chin",
    ['chinWidth'] = "Chin Lowering ",
    ['chinLength'] = "Chin Length ",
    ['chinSize'] = "Chin Length ",
    ['chinHole'] = "Chin Hole Size ",
    ['neckTitle'] = "Neck",
    ['neckThickness'] = "Neck Thickness ",
    ['sunDamageTitle'] = "Sun Damage",
    ['complexionTitle'] = "Complexion",
    ['moleFrecklesTitle'] = "Mole & Freckles",
    ['intensityTitle'] = "Intensity",
    ['blushTitle'] = "Blush",
    ['lipstickTitle'] = "Lipstick",
    ['pedsLocked'] = "Peds are locked.",
    ['pedsDescription1'] = "To open the ped menu please put the tbx id to input.",
    ['pedsDescription2'] = "You can buy the ped menu access from codem.tebex.io.",
    ['ambientMalesTitle'] = "Ambient Males",
    ['animalsTitle'] = "Animals",
    ['malesTitle'] = "Males",
    ['femalesTitle'] = "Females",
    -- Clothing Title's
    ['bincoTitle'] = "BINCO CLOTHING STORE",
    ['ponsonbysTitle'] = "PONSONBYS CLOTHING STORE",
    ['suburbanTitle'] = "SUBURBAN CLOTHING STORE",
    ['bobmuletTitle'] = "BM HAIR & BEAUTY",
    ['blazingTitle'] = "BLAZING TATTOO",
    ['jobTitle'] = "WARDROBE",
    ['wardrobeTitle'] = "WARDROBE",
    -- Clothing Categorie's
    ['jacketsTitle'] = "Tops & Jackets",
    ['undershirtTitle'] = "Undershirt",
    ['legsTitle'] = "Legs",
    ['maskTitle'] = "Mask",
    ['chainsTitle'] = "Scarfs & Chains",
    ['decalsTitle'] = "Decals",
    ['hatsTitle'] = "Hats & Helmet",
    ['glassessTitle'] = "Glassess",
    ['earaccTitle'] = "Ear Accoseries",
    ['watchesTitle'] = "Watches",
    ['braceletsTitle'] = "Bracelets",
    -- Clothing Option's
    ['variationsTitle'] = "Variations",
    ['modelTitle'] = "Model",
    ['variationTitle'] = "Variation",
    ['modelNumberText'] = "Go to model by typing the number...",
    -- Summary 
    ['summaryTitle'] = "Summary",
    -- Wear & Unwear
    ['unwearTitle'] = "Wear & Unwear",
    -- Clothing Popup
    ['thanksText'] = "Thanks for choosing",
    ['saveOutfitText'] = "Save this outfit after i buy",
    ['giveOutfitNameText'] = "Give your outfit a name",
    ['bincoText'] = "Binco",
    ['ponsonbysText'] = "Ponsonbys",
    ['suburbanText'] = "Suburban",
    ['bobmuletText'] = "Bob Mulet",
    ['blazingText'] = "Blazing",
    -- Outfit's
    ['savedOutfits'] = "Saved Outfits",
    ['unpaidOutfits'] = "Unpaid Outfits",
    ['favouritesTitle'] = "Favourites",
    ['dailyOutfits'] = "Daily Outfits",
    ['sharedOutfits'] = "Shared Outfits",
    ['heistsOutfits'] = "Heists",
    ['savedForLaterOutfits'] = "Unpaid Outfits That Saved For Later",
    ['likedClothes'] = "Liked Clothes",
    -- Share Outfit's
    ['shareOutfitTitle'] = "Share Outfit",
    ['nearbyPlayers'] = "Nearby Players",
    ['sharingRequestTitle'] = "Outfit Sharing Request!",
    ['sharingRequestText'] = " wants to share their outift with you!",
    -- Create New Collection
    ['createNewTitle'] = "Create New Collection",
    ['collectionNameInput'] = "Collection Name",
    -- Barbershop
    ['barbershopTitle'] = "Bob Mulet Hair & Beauty",
    ['fadeTitle'] = "Fade",
    ['generalMakeupTitle'] = "General Makeup",
    ['totalPrice'] = "Total Price",
    -- Tattooshop
    ['tattooshopTitle'] = "Blazing Tattoo",
    ['torsoTitle1'] = "Torso",
    ['torsoTitle2'] = "Back",
    ['torsoTitle3'] = "Head",
    ['torsoTitle4'] = "Neck",
    ['torsoTitle5'] = "Left Arm",
    ['torsoTitle6'] = "Right Arm",
    ['torsoTitle7'] = "Left Leg",
    ['torsoTitle8'] = "Right Leg",
    ['removeTattooTitle'] = "Remove Tattoo",
    ['tattoosTitle'] = "Tattoos",
    -- Button's
    ['createCharacterButton'] = "CREATE CHARACTER",
    ['randomizeButton'] = "Randomize",
    ['unlockButton'] = "UNLOCK",
    ['saveForLaterButton'] = "Save for later",
    ['savedForLaterButton'] = "Saved for later",
    ['savedButton'] = "Saved",
    ['savedOutfitButton'] = "Saved Outfit",
    ['wearNowButton'] = "WEAR NOW",
    ['buyNowButton'] = "BUY NOW",
    ['payNowButton'] = "PAY NOW",
    ['acceptButton'] = "Accept",
    ['declineButton'] = "Decline",
    ['deleteButton'] = "Delete",
    ['createButton'] = "Create",
    ['cancelButton'] = "Cancel",
    ['applyTattooButton'] = "Apply Tattoo",

    ['colectionName'] = "Collection Name",
    ['model'] = 'Model',
    ['Veriation'] = 'Veriation',
    ['uncategorized'] = 'Uncategorized',
    ['deleteOutButton'] = 'Delete Outfit',

    ['allponsonbysCloting'] = 'All Ponsonbys Clothing',

    ['fheaderText1'] = 'Tops & Jackets',
    ['fheaderText2'] = 'Undershirt',
    ['fheaderText3'] = 'Hands & Arms',
    ['fheaderText4'] = 'Legs',
    ['fheaderText5'] = 'Shoes',

    ['sheaderText1'] = 'Masks',
    ['sheaderText2'] = 'Scarfs & Chains',
    ['sheaderText3'] = 'Decals',
    ['sheaderText4'] = 'Hats & Helmets',

    ['fheaderText6'] = 'Body Armour',
    ['fheaderText7'] = 'Bags & Parachutes',

    ['theaderText1'] = 'Glassess',
    ['theaderText2'] = 'Ear Accessories',
    ['theaderText3'] = 'Watches',
    ['theaderText4'] = 'Bracelets',

    ['removeBasket'] = 'Remove',
    ['addBasket'] = 'Add',

    ['noMoney'] = "You don't have money",
    ['nameEmpty'] = "Name can't be empty",

    

}