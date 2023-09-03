Config = Config or {}

Config.JobOutfitsInteraction = {
    data = {
        {
            coords = {
                vector3(438.0425, -991.7719, 29.68959)
            },
            allowedJobs = {"police"},
        },
        {
            coords = {
                vector3(305.3716, -1451.35, 29.97038),
            },
            allowedJobs = {"ambulance"},
        }
    },
    openKey = 38, -- https://docs.fivem.net/docs/game-references/controls/
    -- do not enable marker and drawText at the same time make sure only one of these is set to true
    marker = {
        enable = true,
        type = 0,
        size = 0.6,
        rgba = {255, 0, 0, 255}
    },
    drawText = {
        enable = false,
        text = "PRESS ~r~ [E] ~w~ to job wardrobe"
    },
    textui = {
        enable = false,
        text = "PRESS ~r~ [E] ~w~ to job wardrobe"
    }
}




Config.JobOutfits = {
    ['police'] = {
        -- Job
        ['male'] = {
            -- Gender
            [0] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        pants_1 = 24,
                        pants_2 = 0,
                        arms = 19,
                        arms_2 = 0,
                        tshirt_1 = 58,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 55,
                        torso_2 = 0,
                        shoes_1 = 51,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = -1,
                        helmet_2 = -1,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,
                    }
                },
                [2] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {
                        pants_1 = 24,
                        pants_2 = 0,
                        arms = 20,
                        arms_2 = 0,
                        tshirt_1 = 58,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 317,
                        torso_2 = 3,
                        shoes_1 = 51,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 58,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,

                    }
                }
            },
			-- Gender
            [1] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        pants_1 = 24,
                        pants_2 = 0,
                        arms = 19,
                        arms_2 = 0,
                        tshirt_1 = 58,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 55,
                        torso_2 = 0,
                        shoes_1 = 51,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = -1,
                        helmet_2 = -1,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,

                    }
                },
                [2] = {
                    outfitLabel = 'Long Sleeve',
                    outfitData = {
                        pants_1 = 24,
                        pants_2 = 0,
                        arms = 20,
                        arms_2 = 0,
                        tshirt_1 = 58,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 317,
                        torso_2 = 0,
                        shoes_1 = 51,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = -1,
                        helmet_2 = -1,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,

                    }
                },
                [3] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {
                        pants_1 = 24,
                        pants_2 = 0,
                        arms = 20,
                        arms_2 = 0,
                        tshirt_1 = 58,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 317,
                        torso_2 = 3,
                        shoes_1 = 51,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 58,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,

                    }
                }
            },
			-- Gender
            [2] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        pants_1 = 24,
                        pants_2 = 0,
                        arms = 19,
                        arms_2 = 0,
                        tshirt_1 = 58,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 55,
                        torso_2 = 0,
                        shoes_1 = 51,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = -1,
                        helmet_2 = -1,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,

                    }
                },
                [2] = {
                    outfitLabel = 'Long Sleeve',
                    outfitData = {

                        pants_1 = 24,
                        pants_2 = 0,
                        arms = 20,
                        arms_2 = 0,
                        tshirt_1 = 58,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 317,
                        torso_2 = 0,
                        shoes_1 = 51,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = -1,
                        helmet_2 = -1,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,

                    }
                },
                [3] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {


                        pants_1 = 24,
                        pants_2 = 0,
                        arms = 20,
                        arms_2 = 0,
                        tshirt_1 = 58,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 317,
                        torso_2 = 3,
                        shoes_1 = 51,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 58,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,
                    }
                },
                [4] = {
                    outfitLabel = 'Trooper Black',
                    outfitData = {
                        pants_1 = 24,
                        pants_2 = 0,
                        arms = 20,
                        arms_2 = 0,
                        tshirt_1 = 58,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 317,
                        torso_2 = 8,
                        shoes_1 = 51,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 58,
                        helmet_2 = 3,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,

                    }
                }
            },
			-- Gender
            [3] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        pants_1 = 24,
                        pants_2 = 0,
                        arms = 19,
                        arms_2 = 0,
                        tshirt_1 = 58,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 55,
                        torso_2 = 0,
                        shoes_1 = 51,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = -1,
                        helmet_2 = -1,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,

                    }
                },
                [2] = {
                    outfitLabel = 'Long Sleeve',
                    outfitData = {
                        pants_1 = 24,
                        pants_2 = 0,
                        arms = 20,
                        arms_2 = 0,
                        tshirt_1 = 58,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 317,
                        torso_2 = 0,
                        shoes_1 = 51,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = -1,
                        helmet_2 = -1,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,

                    }
                },
                [3] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {
                        pants_1 = 24,
                        pants_2 = 0,
                        arms = 20,
                        arms_2 = 0,
                        tshirt_1 = 58,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 317,
                        torso_2 = 3,
                        shoes_1 = 51,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 58,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,

                    }
                },
                [4] = {
                    outfitLabel = 'Trooper Black',
                    outfitData = {
                        pants_1 = 24,
                        pants_2 = 0,
                        arms = 20,
                        arms_2 = 0,
                        tshirt_1 = 58,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 317,
                        torso_2 = 8,
                        shoes_1 = 51,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 58,
                        helmet_2 = 3,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,


                    }
                },
                [5] = {
                    outfitLabel = 'SWAT',
                    outfitData = {
                        pants_1 = 130,
                        pants_2 = 0,
                        arms = 172,
                        arms_2 = 0,
                        tshirt_1 = 15,
                        tshirt_2 = 0,
                        bproof_1 = 15,
                        bproof_2 = 0,
                        torso_1 = 336,
                        torso_2 = 3,
                        shoes_1 = 24,
                        shoes_2 = 0,
                        chain_1 = 133,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 150,
                        helmet_2 = 3,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 52,
                        mask_2 = 0,


                    }
                }
            },
			-- Gender
            [4] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        pants_1 = 24,
                        pants_2 = 0,
                        arms = 19,
                        arms_2 = 0,
                        tshirt_1 = 58,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 55,
                        torso_2 = 0,
                        shoes_1 = 51,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = -1,
                        helmet_2 = -1,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,

                    }
                },
                [2] = {
                    outfitLabel = 'Long Sleeve',
                    outfitData = {
                        pants_1 = 24,
                        pants_2 = 0,
                        arms = 20,
                        arms_2 = 0,
                        tshirt_1 = 58,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 317,
                        torso_2 = 0,
                        shoes_1 = 51,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = -1,
                        helmet_2 = -1,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,

                    }
                },
                [3] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {
                        pants_1 = 24,
                        pants_2 = 0,
                        arms = 20,
                        arms_2 = 0,
                        tshirt_1 = 58,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 317,
                        torso_2 = 3,
                        shoes_1 = 51,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 58,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,

                    }
                },
                [4] = {
                    outfitLabel = 'Trooper Black',
                    outfitData = {
                        pants_1 = 24,
                        pants_2 = 0,
                        arms = 20,
                        arms_2 = 0,
                        tshirt_1 = 58,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 317,
                        torso_2 = 8,
                        shoes_1 = 51,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 58,
                        helmet_2 = 3,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,

                    }
                },
                [5] = {
                    outfitLabel = 'SWAT',
                    outfitData = {
                        pants_1 = 130,
                        pants_2 = 1,
                        arms = 172,
                        arms_2 = 0,
                        tshirt_1 = 15,
                        tshirt_2 = 0,
                        bproof_1 = 15,
                        bproof_2 = 2,
                        torso_1 = 336,
                        torso_2 = 3,
                        shoes_1 = 24,
                        shoes_2 = 0,
                        chain_1 = 133,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 150,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 52,
                        mask_2 = 0,

                    }
                }
            }
        },
        ['female'] = {
            -- Gender
            [0] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Female Short Sleeve',
                    outfitData = {
                        pants_1 = 133,
                        pants_2 = 0,
                        arms = 31,
                        arms_2 = 0,
                        tshirt_1 = 35,
                        tshirt_2 = 0,
                        bproof_1 = 34,
                        bproof_2 = 0,
                        torso_1 = 48,
                        torso_2 = 0,
                        shoes_1 = 52,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 0,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,

                    }
                },
                [2] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {

                        pants_1 = 133,
                        pants_2 = 0,
                        arms = 31,
                        arms_2 = 0,
                        tshirt_1 = 35,
                        tshirt_2 = 0,
                        bproof_1 = 34,
                        bproof_2 = 0,
                        torso_1 = 327,
                        torso_2 = 3,
                        shoes_1 = 52,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 0,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,


                    }
                }
            },
            -- Gender
            [1] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        pants_1 = 133,
                        pants_2 = 0,
                        arms = 31,
                        arms_2 = 0,
                        tshirt_1 = 35,
                        tshirt_2 = 0,
                        bproof_1 = 34,
                        bproof_2 = 0,
                        torso_1 = 48,
                        torso_2 = 0,
                        shoes_1 = 52,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 0,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,
                    }

                },
                [2] = {
                    outfitLabel = 'Long Sleeve',
                    outfitData = {
                        pants_1 = 133,
                        pants_2 = 0,
                        arms = 31,
                        arms_2 = 0,
                        tshirt_1 = 35,
                        tshirt_2 = 0,
                        bproof_1 = 34,
                        bproof_2 = 0,
                        torso_1 = 327,
                        torso_2 = 0,
                        shoes_1 = 52,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 0,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,


                    }
                },
                [3] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {
                        pants_1 = 133,
                        pants_2 = 0,
                        arms = 31,
                        arms_2 = 0,
                        tshirt_1 = 35,
                        tshirt_2 = 0,
                        bproof_1 = 34,
                        bproof_2 = 0,
                        torso_1 = 327,
                        torso_2 = 3,
                        shoes_1 = 52,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 0,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,



                    }
                }
            },
			-- Gender
            [2] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        pants_1 = 133,
                        pants_2 = 0,
                        arms = 31,
                        arms_2 = 0,
                        tshirt_1 = 35,
                        tshirt_2 = 0,
                        bproof_1 = 34,
                        bproof_2 = 0,
                        torso_1 = 48,
                        torso_2 = 0,
                        shoes_1 = 52,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 0,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,

                    }
                },
                [2] = {
                    outfitLabel = 'Long Sleeve',
                    outfitData = {
                        pants_1 = 133,
                        pants_2 = 0,
                        arms = 31,
                        arms_2 = 0,
                        tshirt_1 = 35,
                        tshirt_2 = 0,
                        bproof_1 = 34,
                        bproof_2 = 0,
                        torso_1 = 327,
                        torso_2 = 0,
                        shoes_1 = 52,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 0,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,


                    }
                },
                [3] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {
                        pants_1 = 133,
                        pants_2 = 0,
                        arms = 31,
                        arms_2 = 0,
                        tshirt_1 = 35,
                        tshirt_2 = 0,
                        bproof_1 = 34,
                        bproof_2 = 0,
                        torso_1 = 327,
                        torso_2 = 3,
                        shoes_1 = 52,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 0,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,


                    }
                },
                [4] = {
                    outfitLabel = 'Trooper Black',
                    outfitData = {
                        pants_1 = 133,
                        pants_2 = 0,
                        arms = 31,
                        arms_2 = 0,
                        tshirt_1 = 35,
                        tshirt_2 = 0,
                        bproof_1 = 34,
                        bproof_2 = 0,
                        torso_1 = 327,
                        torso_2 = 8,
                        shoes_1 = 52,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 0,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,

                    }
                }
            },
			-- Gender
            [3] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        pants_1 = 133,
                        pants_2 = 0,
                        arms = 31,
                        arms_2 = 0,
                        tshirt_1 = 35,
                        tshirt_2 = 0,
                        bproof_1 = 34,
                        bproof_2 = 0,
                        torso_1 = 48,
                        torso_2 = 0,
                        shoes_1 = 52,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 0,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,


                    }
                },
                [2] = {
                    outfitLabel = 'Long Sleeve',
                    outfitData = {
                        pants_1 = 133,
                        pants_2 = 0,
                        arms = 31,
                        arms_2 = 0,
                        tshirt_1 = 35,
                        tshirt_2 = 0,
                        bproof_1 = 34,
                        bproof_2 = 0,
                        torso_1 = 327,
                        torso_2 = 0,
                        shoes_1 = 52,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 0,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,


                    }
                },
                [3] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {

                        pants_1 = 133,
                        pants_2 = 0,
                        arms = 31,
                        arms_2 = 0,
                        tshirt_1 = 35,
                        tshirt_2 = 0,
                        bproof_1 = 34,
                        bproof_2 = 0,
                        torso_1 = 327,
                        torso_2 = 3,
                        shoes_1 = 52,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 0,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,


                    }
                },
                [4] = {
                    outfitLabel = 'Trooper Black',
                    outfitData = {
                        pants_1 = 133,
                        pants_2 = 0,
                        arms = 31,
                        arms_2 = 0,
                        tshirt_1 = 35,
                        tshirt_2 = 0,
                        bproof_1 = 34,
                        bproof_2 = 0,
                        torso_1 = 327,
                        torso_2 = 8,
                        shoes_1 = 52,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 0,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,


                    }
                },
                [5] = {
                    outfitLabel = 'Swat',
                    outfitData = {
                        pants_1 = 135,
                        pants_2 = 0,
                        arms = 213,
                        arms_2 = 0,
                        tshirt_1 = 35,
                        tshirt_2 = 0,
                        bproof_1 = 17,
                        bproof_2 = 2,
                        torso_1 = 327,
                        torso_2 = 8,
                        shoes_1 = 52,
                        shoes_2 = 0,
                        chain_1 = 102,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 149,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 35,
                        mask_2 = 0,


                    }
                }
            },
			-- Gender
            [4] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        pants_1 = 133,
                        pants_2 = 0,
                        arms = 31,
                        arms_2 = 0,
                        tshirt_1 = 35,
                        tshirt_2 = 0,
                        bproof_1 = 34,
                        bproof_2 = 0,
                        torso_1 = 48,
                        torso_2 = 0,
                        shoes_1 = 52,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 0,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,

                    }
                },
                [2] = {
                    outfitLabel = 'Long Sleeve',
                    outfitData = {
                        pants_1 = 133,
                        pants_2 = 0,
                        arms = 31,
                        arms_2 = 0,
                        tshirt_1 = 35,
                        tshirt_2 = 0,
                        bproof_1 = 34,
                        bproof_2 = 0,
                        torso_1 = 327,
                        torso_2 = 0,
                        shoes_1 = 52,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 0,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,


                    }
                },
                [3] = {
                    outfitLabel = 'Trooper Tan',
                    outfitData = {
                        pants_1 = 133,
                        pants_2 = 0,
                        arms = 31,
                        arms_2 = 0,
                        tshirt_1 = 35,
                        tshirt_2 = 0,
                        bproof_1 = 34,
                        bproof_2 = 0,
                        torso_1 = 327,
                        torso_2 = 3,
                        shoes_1 = 52,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 0,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,


                    }
                },
                [4] = {
                    outfitLabel = 'Trooper Black',
                    outfitData = {
                        pants_1 = 133,
                        pants_2 = 0,
                        arms = 31,
                        arms_2 = 0,
                        tshirt_1 = 35,
                        tshirt_2 = 0,
                        bproof_1 = 34,
                        bproof_2 = 0,
                        torso_1 = 327,
                        torso_2 = 8,
                        shoes_1 = 52,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 0,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,


                    }
                },
                [5] = {
                    outfitLabel = 'Swat',
                    outfitData = {
                        pants_1 = 135,
                        pants_2 = 1,
                        arms = 213,
                        arms_2 = 0,
                        tshirt_1 = 0,
                        tshirt_2 = 0,
                        bproof_1 = 17,
                        bproof_2 = 0,
                        torso_1 = 327,
                        torso_2 = 8,
                        shoes_1 = 52,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 149,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 35,
                        mask_2 = 0,

                    }
                }
            }
        }
    },
    ['realestate'] = {
        -- Job
        ['male'] = {
            -- Gender
            [0] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Worker',
                    outfitData = {
                        pants_1 = 28,
                        pants_2 = 0,
                        arms = 1,
                        arms_2 = 0,
                        tshirt_1 = 31,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 294,
                        torso_2 = 0,
                        shoes_1 = 10,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 12,
                        helmet_2 = -1,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,


                    }
                }
            },
			-- Gender
            [1] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Worker',
                    outfitData = {
                        pants_1 = 28,
                        pants_2 = 0,
                        arms = 1,
                        arms_2 = 0,
                        tshirt_1 = 31,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 294,
                        torso_2 = 0,
                        shoes_1 = 10,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 12,
                        helmet_2 = -1,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,

                    }
                }
            },
			-- Gender
            [2] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Worker',
                    outfitData = {
                        pants_1 = 28,
                        pants_2 = 0,
                        arms = 1,
                        arms_2 = 0,
                        tshirt_1 = 31,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 294,
                        torso_2 = 0,
                        shoes_1 = 10,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 12,
                        helmet_2 = -1,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,


                    }
                }
            },
			-- Gender
            [3] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Worker',
                    outfitData = {
                        pants_1 = 28,
                        pants_2 = 0,
                        arms = 1,
                        arms_2 = 0,
                        tshirt_1 = 31,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 294,
                        torso_2 = 0,
                        shoes_1 = 10,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 12,
                        helmet_2 = -1,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,

                    }
                }
            },
			-- Gender
            [4] = {
                -- Grade Level
                [1] = {
                    -- Outfits
                    outfitLabel = 'Short Sleeve',
                    outfitData = {
                        pants_1 = 28,
                        pants_2 = 0,
                        arms = 1,
                        arms_2 = 0,
                        tshirt_1 = 31,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 294,
                        torso_2 = 0,
                        shoes_1 = 10,
                        shoes_2 = 0,
                        chain_1 = 0,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 12,
                        helmet_2 = -1,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,


                    }
                }
            }
        },
        ['female'] = {
            -- Gender
            [0] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Worker',
                    outfitData = {
                        pants_1 = 57,
                        pants_2 = 2,
                        arms = 0,
                        arms_2 = 0,
                        tshirt_1 = 34,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 105,
                        torso_2 = 7,
                        shoes_1 = 8,
                        shoes_2 = 5,
                        chain_1 = 11,
                        chain_2 = 3,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = -1,
                        helmet_2 = -1,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,

                    }
                }
            },
            -- Gender
            [1] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Worker',
                    outfitData = {
                        pants_1 = 57,
                        pants_2 = 2,
                        arms = 0,
                        arms_2 = 0,
                        tshirt_1 = 34,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 105,
                        torso_2 = 7,
                        shoes_1 = 8,
                        shoes_2 = 5,
                        chain_1 = 11,
                        chain_2 = 3,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = -1,
                        helmet_2 = -1,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,


                    }
                }
            },
			-- Gender
            [2] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Worker',
                    outfitData = {
                        pants_1 = 57,
                        pants_2 = 2,
                        arms = 0,
                        arms_2 = 0,
                        tshirt_1 = 34,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 105,
                        torso_2 = 7,
                        shoes_1 = 8,
                        shoes_2 = 5,
                        chain_1 = 11,
                        chain_2 = 3,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = -1,
                        helmet_2 = -1,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,

                    }
                }
            },
			-- Gender
            [3] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Worker',
                    outfitData = {
                        pants_1 = 57,
                        pants_2 = 2,
                        arms = 0,
                        arms_2 = 0,
                        tshirt_1 = 34,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 105,
                        torso_2 = 7,
                        shoes_1 = 8,
                        shoes_2 = 5,
                        chain_1 = 11,
                        chain_2 = 3,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = -1,
                        helmet_2 = -1,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,

                    }
                }
            },
			-- Gender
            [4] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'Worker',
                    outfitData = {
                        pants_1 = 57,
                        pants_2 = 2,
                        arms = 0,
                        arms_2 = 0,
                        tshirt_1 = 34,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 105,
                        torso_2 = 7,
                        shoes_1 = 8,
                        shoes_2 = 5,
                        chain_1 = 11,
                        chain_2 = 3,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = -1,
                        helmet_2 = -1,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,

                    }
                }
            }
        }
    },
    ['ambulance'] = {
        -- Job
        ['male'] = {
            -- Gender
            [0] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {

                        pants_1 = 96,
                        pants_2 = 0,
                        arms = 85,
                        arms_2 = 0,
                        tshirt_1 = 129,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 250,
                        torso_2 = 0,
                        shoes_1 = 54,
                        shoes_2 = 0,
                        chain_1 = 127,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = -1,
                        helmet_2 = -1,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 121,
                        mask_2 = 0,
                        decals_1 = 122,
                        decals_2 = 0,

                    }
                }
            },
            [1] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {

                        pants_1 = 96,
                        pants_2 = 0,
                        arms = 85,
                        arms_2 = 0,
                        tshirt_1 = 129,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 250,
                        torso_2 = 0,
                        shoes_1 = 54,
                        shoes_2 = 0,
                        chain_1 = 127,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 122,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 121,
                        mask_2 = 0,
                        decals_1 = 58,
                        decals_2 = 0,

                    }
                }
            },
            [2] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {
                        pants_1 = 96,
                        pants_2 = 0,
                        arms = 85,
                        arms_2 = 0,
                        tshirt_1 = 129,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 250,
                        torso_2 = 0,
                        shoes_1 = 54,
                        shoes_2 = 0,
                        chain_1 = 127,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 122,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 121,
                        mask_2 = 0,
                        decals_1 = 58,
                        decals_2 = 0,


                    }
                },
                [2] = {
                    outfitLabel = 'Polo',
                    outfitData = {
                        pants_1 = 96,
                        pants_2 = 0,
                        arms = 90,
                        arms_2 = 0,
                        tshirt_1 = 15,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 249,
                        torso_2 = 0,
                        shoes_1 = 54,
                        shoes_2 = 0,
                        chain_1 = 126,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 122,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 121,
                        mask_2 = 0,
                        decals_1 = 57,
                        decals_2 = 0,

                    }
                }
            },
            [3] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {
                        pants_1 = 96,
                        pants_2 = 0,
                        arms = 85,
                        arms_2 = 0,
                        tshirt_1 = 129,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 250,
                        torso_2 = 0,
                        shoes_1 = 54,
                        shoes_2 = 0,
                        chain_1 = 127,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 122,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 121,
                        mask_2 = 0,
                        decals_1 = 58,
                        decals_2 = 0,

                    }
                },
                [2] = {
                    outfitLabel = 'Polo',
                    outfitData = {
                        pants_1 = 96,
                        pants_2 = 0,
                        arms = 90,
                        arms_2 = 0,
                        tshirt_1 = 15,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 249,
                        torso_2 = 0,
                        shoes_1 = 54,
                        shoes_2 = 0,
                        chain_1 = 126,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 122,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 121,
                        mask_2 = 0,
                        decals_1 = 57,
                        decals_2 = 0,

                    }
                },
                [3] = {
                    outfitLabel = 'Doctor',
                    outfitData = {
                        pants_1 = 28,
                        pants_2 = 0,
                        arms = 93,
                        arms_2 = 0,
                        tshirt_1 = 32,
                        tshirt_2 = 3,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 31,
                        torso_2 = 7,
                        shoes_1 = 10,
                        shoes_2 = 0,
                        chain_1 = 126,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = -1,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,
                        decals_1 = 0,
                        decals_2 = 0,


                    }
                }
            },
            [4] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {

                        pants_1 = 96,
                        pants_2 = 0,
                        arms = 85,
                        arms_2 = 0,
                        tshirt_1 = 129,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 250,
                        torso_2 = 0,
                        shoes_1 = 54,
                        shoes_2 = 0,
                        chain_1 = 127,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 122,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 121,
                        mask_2 = 0,
                        decals_1 = 58,
                        decals_2 = 0,


                    }
                },
                [2] = {
                    outfitLabel = 'Polo',
                    outfitData = {
                        pants_1 = 96,
                        pants_2 = 0,
                        arms = 15,
                        arms_2 = 0,
                        tshirt_1 = 15,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 249,
                        torso_2 = 0,
                        shoes_1 = 54,
                        shoes_2 = 0,
                        chain_1 = 126,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 122,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 121,
                        mask_2 = 0,
                        decals_1 = 57,
                        decals_2 = 0,

                    }
                },
                [3] = {
                    outfitLabel = 'Doctor',
                    outfitData = {
                        pants_1 = 28,
                        pants_2 = 0,
                        arms = 15,
                        arms_2 = 0,
                        tshirt_1 = 32,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 31,
                        torso_2 = 7,
                        shoes_1 = 10,
                        shoes_2 = 0,
                        chain_1 = 126,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = -1,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,
                        decals_1 = 0,
                        decals_2 = 0,

                    }
                }
            }
        },
        ['female'] = {
            -- Gender
            [0] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {
                        pants_1 = 99,
                        pants_2 = 0,
                        arms = 109,
                        arms_2 = 0,
                        tshirt_1 = 159,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 258,
                        torso_2 = 0,
                        shoes_1 = 55,
                        shoes_2 = 0,
                        chain_1 = 97,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 121,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 121,
                        mask_2 = 0,
                        decals_1 = 66,
                        decals_2 = 0,
                    }
                }
            },
            [1] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {
                        pants_1 = 99,
                        pants_2 = 0,
                        arms = 109,
                        arms_2 = 0,
                        tshirt_1 = 159,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 258,
                        torso_2 = 0,
                        shoes_1 = 55,
                        shoes_2 = 0,
                        chain_1 = 97,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 121,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 121,
                        mask_2 = 0,
                        decals_1 = 66,
                        decals_2 = 0,

                    }
                }
            },
            [2] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {
                        pants_1 = 99,
                        pants_2 = 0,
                        arms = 109,
                        arms_2 = 0,
                        tshirt_1 = 159,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 258,
                        torso_2 = 0,
                        shoes_1 = 55,
                        shoes_2 = 0,
                        chain_1 = 97,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 121,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 121,
                        mask_2 = 0,
                        decals_1 = 66,
                        decals_2 = 0,

                    }
                },
                [2] = {
                    outfitLabel = 'Polo',
                    outfitData = {
                        pants_1 = 99,
                        pants_2 = 0,
                        arms = 105,
                        arms_2 = 0,
                        tshirt_1 = 13,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 257,
                        torso_2 = 0,
                        shoes_1 = 55,
                        shoes_2 = 0,
                        chain_1 = 96,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 121,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 121,
                        mask_2 = 0,
                        decals_1 = 65,
                        decals_2 = 0,


                    }
                }
            },
            [3] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {
                        pants_1 = 99,
                        pants_2 = 0,
                        arms = 109,
                        arms_2 = 0,
                        tshirt_1 = 159,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 258,
                        torso_2 = 0,
                        shoes_1 = 55,
                        shoes_2 = 0,
                        chain_1 = 97,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 121,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 121,
                        mask_2 = 0,
                        decals_1 =65,

                    }
                },
                [2] = {
                    outfitLabel = 'Polo',
                    outfitData = {
                        pants_1 = 99,
                        pants_2 = 0,
                        arms = 105,
                        arms_2 = 0,
                        tshirt_1 = 13,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 257,
                        torso_2 = 0,
                        shoes_1 = 55,
                        shoes_2 = 0,
                        chain_1 = 96,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 121,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 121,
                        mask_2 = 0,
                        decals_1 =65,

                    }
                },
                [3] = {
                    outfitLabel = 'Doctor',
                    outfitData = {

                        pants_1 = 34,
                        pants_2 = 0,
                        arms = 105,
                        arms_2 = 0,
                        tshirt_1 = 39,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 7,
                        torso_2 = 1,
                        shoes_1 = 29,
                        shoes_2 = 0,
                        chain_1 = 96,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = -1,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,
                        decals_1 =0,
                        decals_2 = 0,

                    }
                }
            },
            [4] = {
                -- Grade Level
                [1] = {
                    outfitLabel = 'T-Shirt',
                    outfitData = {
                        pants_1 = 99,
                        pants_2 = 0,
                        arms = 109,
                        arms_2 = 0,
                        tshirt_1 = 159,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 258,
                        torso_2 = 0,
                        shoes_1 = 55,
                        shoes_2 = 0,
                        chain_1 = 97,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 121,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 121,
                        mask_2 = 0,
                        decals_1 =66,
                        decals_2 = 0,

                    }
                },
                [2] = {
                    outfitLabel = 'Polo',
                    outfitData = {
                        pants_1 = 99,
                        pants_2 = 0,
                        arms = 105,
                        arms_2 = 0,
                        tshirt_1 = 13,
                        tshirt_2 = 0,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 257,
                        torso_2 = 0,
                        shoes_1 = 55,
                        shoes_2 = 0,
                        chain_1 = 96,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = 121,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 121,
                        mask_2 = 0,
                        decals_1 =65,
                        decals_2 = 0,
                    }
                },
                [3] = {
                    outfitLabel = 'Doctor',
                    outfitData = {
                        pants_1 = 34,
                        pants_2 = 0,
                        arms = 105,
                        arms_2 = 0,
                        tshirt_1 = 39,
                        tshirt_2 = 3,
                        bproof_1 = 0,
                        bproof_2 = 0,
                        torso_1 = 7,
                        torso_2 = 1,
                        shoes_1 = 29,
                        shoes_2 = 0,
                        chain_1 = 96,
                        chain_2 = 0,
                        bags_1 = 0,
                        bags_2 = 0,
                        helmet_1 = -1,
                        helmet_2 = 0,
                        glasses_1 = 0,
                        glasses_2 = 0,
                        mask_1 = 0,
                        mask_2 = 0,
                        decals_1 =0,
                        decals_2 = 0,


                    }
                }
            }
        }
    }
}