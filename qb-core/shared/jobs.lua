QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = false -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Civilian',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Freelancer',
                payment = 10
            },
        },
	},
    ['unicorn'] = {
        label = 'Vanilla unicorn',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Bouncer',
                payment = 1000
            },
            ['1'] = {
                name = 'Bartender',
                payment = 1250
            },
            ['2'] = {
                name = 'Stripper',
                payment = 1500
            },
            ['3'] = {
                name = 'Boss',
                isboss = true,
                payment = 2500
            }
        }
    },

    ["casino"] = {
        label = "Grand Casino",
        salary = 300,
        grades = {
            [0] = {
                name = "Security",
                salary = 300
            },
            [1] = {
                name = "Bar Tender/Cashier",
                salary = 300
            },
            [2] = {
                name = "Assistant Manager",
                salary = 300,
                isboss = true
            },
            [3] = {
                name = "Casino Boss",
                salary = 300,
                isboss = true
            }
        },
        ["boss"] = {
            [1] = {x = 956.41, y = 20.64, z = 75.74, h = 209.06}
        },
        defaultDuty = false
    },
    ["whitewidow"] = {
		label = "White Widow",
		defaultDuty = true,
		grades = {
			['0'] = {
				name = 'Deliveries',
				payment = 500
		},
			['1'] = {
				name = 'Sales',
				payment = 1500
		},
			['2'] = {
				name = 'Management',
				payment = 2000
		},
			['3'] = {
				name = 'Owner',
				isboss = true,
				payment = 3000
			},
		},
	},
	['police'] = {
		label = 'Law Enforcement',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Cadet',
                payment = 500
            },
			['1'] = {
                name = 'Officer',
                payment = 1000
            },
			['2'] = {
                name = 'Corporal',
                payment = 1500
            },
			['3'] = {
                name = 'Sergeant',
                payment = 2500
            },
			['4'] = {
                name = 'Lieutenant',
                payment = 3000
            },
			['5'] = {
                name = 'Commander',
                payment = 4000
            },
			['6'] = {
                name = 'High Commander',
                payment = 4500
            },
			['7'] = {
                name = 'Deputy Chief',
                payment = 5500
            },
			['8'] = {
                name = 'Chief',
				isboss = true,
                payment = 6500
            },
        },
	},
	['ambulance'] = {
		label = 'EMS',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 1000
            },
			['1'] = {
                name = 'Paramedic',
                payment = 2000
            },
			['2'] = {
                name = 'Doctor',
                payment = 3000
            },
			['3'] = {
                name = 'Surgeon',
                payment = 3500
            },
			['4'] = {
                name = 'Chief Surgeon',
                payment = 4000
            },
			['5'] = {
                name = 'Deputy Chief',
                payment = 5500
            },
			['6'] = {
                name = 'Chief',
				isboss = true,
                payment = 6500
            },
        },
	},

    ['uwu'] = {
        label = 'Uwu Cafe',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 150
            },
            ['1'] = {
                name = 'Crew Member',
                payment = 165
            },
            ['2'] = {
                name = 'Shift Manager',
                payment = 175
            },
            ['3'] = {
                name = 'Manager',
                payment = 185
            },
            ['4'] = {
                name = 'Owner',
                isboss = true,
                payment = 200
            },
        },
    },
    
	['realestate'] = {
		label = 'Real Estate',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 500
            },
			['1'] = {
                name = 'House Sales',
                payment = 1000
            },
			['2'] = {
                name = 'Business Sales',
                payment = 1250
            },
			['3'] = {
                name = 'Broker',
                payment = 1500
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 2500
            },
        },
	},
	['taxi'] = {
		label = 'Taxi',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 100
            },
			['1'] = {
                name = 'Driver',
                payment = 150
            },
			['2'] = {
                name = 'Event Driver',
                payment = 200
            },
			['3'] = {
                name = 'Sales',
                payment = 250
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 350
            },
        },
	},
     ['bus'] = {
		label = 'Bus',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 100
            },
		},
	},
    ['telco'] = {
        label = 'Telco Technician',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Telco Technician',
                payment = 100
            },
        },
    }, 
    ['gruppesechs'] = {
        label = 'Gruppe 6',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Collector',
                payment = 100
            },
        },
    }, 
    ['planepilot'] = {
        label = 'Cargo Delivery Pilot',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Pilot',
                payment = 100
            },
        },
    },
	['cardealer'] = {
		label = 'Vehicle Dealer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 500
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 750
            },
			['2'] = {
                name = 'Business Sales',
                payment = 1000
            },
			['3'] = {
                name = 'Finance',
                payment = 1250
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 1500
            },
        },
	},
	['mechanic'] = {
		label = 'Mechanic',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 750
            },
			['1'] = {
                name = 'Novice',
                payment = 1000
            },
			['2'] = {
                name = 'Experienced',
                payment = 1500
            },
			['3'] = {
                name = 'Advanced',
                payment = 2000
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 3000
            },
        },
	},
    ['mechanicls'] = {
		label = 'Mechanic LS',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'Novice',
                payment = 60
            },
			['2'] = {
                name = 'Experienced',
                payment = 70
            },
			['3'] = {
                name = 'Advanced',
                payment = 80
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 100
            },
        },
	},
	['mechanicimp'] = {
		label = 'Mechanic Imports',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'Novice',
                payment = 60
            },
			['2'] = {
                name = 'Experienced',
                payment = 70
            },
			['3'] = {
                name = 'Advanced',
                payment = 80
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 100
            },
        },
	},
	['mechanictuner'] = {
		label = 'Mechanic Tuner',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'Novice',
                payment = 60
            },
			['2'] = {
                name = 'Experienced',
                payment = 70
            },
			['3'] = {
                name = 'Advanced',
                payment = 80
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 100
            },
        },
	},
    ["burgershot"] = {
		label = "Burgershot Employee",
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = "Trainee",
                payment = 250
            },
			['1'] = {
                name = "Employee",
                payment = 500
            },
			['2'] = {
                name = "Burger Flipper",
                payment = 750
            },
			['3'] = {
                name = "Manager",
                payment = 1000
            },
			['4'] = {
                name = "CEO",
				isboss = true,
                payment = 1500
            },
        },
	},
	['judge'] = {
		label = 'Honorary',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Judge',
                payment = 3000
            },
        },
	},
	['lawyer'] = {
		label = 'Law Firm',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Associate',
                payment = 1750
            },
        },
	},
	['reporter'] = {
		label = 'Reporter',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Journalist',
                payment = 100
            },
        },
	},
	['trucker'] = {
		label = 'Trucker',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 100
            },
        },
	},
	['tow'] = {
		label = 'Towing',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 100
            },
        },
	},
	['garbage'] = {
		label = 'Garbage',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Collector',
                payment = 100
            },
        },
	},
    ['farmer'] = {
		label = 'Farmer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Rural Farmer',
                payment = 100
            },
        },
	},
	['vineyard'] = {
		label = 'Vineyard',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Picker',
                payment = 100
            },
        },
	},
	['hotdog'] = {
		label = 'Hotdog',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Sales',
                payment = 100
            },
        },
	},
    ['miner'] = {
		label = 'Miner',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Miner',
                payment = 100
            },
        },
	},
    ['tanker'] = {
		label = 'Tanker',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Tanker',
                payment = 100
            },
        },
	},
    ['lumberjack'] = {
		label = 'Lumberjack',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Wood Cutter',
                payment = 100
            },
        },
	},
    ["taco"] = {
		label = "Taco",
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = "Trainee",
                payment = 500
            },
			['1'] = {
                name = "Employee",
                payment = 750
            },
			['2'] = {
                name = "Flipper",
                payment = 1000
            },
			['3'] = {
                name = "Manager",
                payment = 1250
            },
			['4'] = {
                name = "CEO",
				isboss = true,
                payment = 1500
            },
        },
	},
    ['tuner'] = {
        label = 'Tuner Autos',
        defaultDuty = false,
		offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 3000
            },
            ['1'] = {
                name = 'Mechanic',
                payment = 4500
            },
            ['2'] = {
                name = 'Manager',
                payment = 5000
            
            },
            ['3'] = {
                name = 'Co-Owner',
                payment = 6500
            },
            ['4'] = {
                name = 'Owner',
                isboss = true,
                payment = 7500
            },
        },
    },
}

            -- Jobs Creator integration (jobs_creator)
            RegisterNetEvent("jobs_creator:injectJobs", function(jobs)
                QBShared.Jobs = jobs
            end)
        