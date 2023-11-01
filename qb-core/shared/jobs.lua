QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.QBJobsStatus = false -- true: integrate qb-jobs into the whole of qb-core | false: treat qb-jobs as an add-on resource.
QBShared.Jobs = {} -- All of below has been migrated into qb-jobs
if QBShared.QBJobsStatus then return end
QBShared.Jobs = {
	['unemployed'] = {label = 'Civilian', defaultDuty = true, offDutyPay = false, grades = {['0'] = {name = 'Freelancer', payment = 100}}},
    ['bus'] =        {label = 'Bus',      defaultDuty = true, offDutyPay = false, grades = {['0'] = {name = 'Driver',     payment = 300}}},
	['judge'] =      {label = 'Honorary', defaultDuty = true, offDutyPay = false, grades = {['0'] = {name = 'Judge',      payment = 300}}},
	['lawyer'] =     {label = 'Law Firm', defaultDuty = true, offDutyPay = false, grades = {['0'] = {name = 'Associate',  payment = 300}}},
	['reporter'] =   {label = 'Reporter', defaultDuty = true, offDutyPay = false, grades = {['0'] = {name = 'Journalist', payment = 300}}},
	['trucker'] =    {label = 'Trucker',  defaultDuty = true, offDutyPay = false, grades = {['0'] = {name = 'Driver',     payment = 300}}},
	['tow'] =        {label = 'Towing',   defaultDuty = true, offDutyPay = false, grades = {['0'] = {name = 'Driver',     payment = 300}}},
	['garbage'] =    {label = 'Garbage',  defaultDuty = true, offDutyPay = false, grades = {['0'] = {name = 'Collector',  payment = 500}}},
	['vineyard'] =   {label = 'Vineyard', defaultDuty = true, offDutyPay = false, grades = {['0'] = {name = 'Picker',     payment = 300}}},
	['hotdog'] =     {label = 'Hotdog',   defaultDuty = true, offDutyPay = false, grades = {['0'] = {name = 'Sales',      payment = 300}}},



    ['police'] = {label = 'Law Enforcement', type = "leo", defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = "Trainee", payment = 400},
            ['1'] = {name = "Cadet", payment = 600},
            ['2'] = {name = "Trooper", payment = 800},
            ['3'] = {name = "Senior Trooper", payment = 1000},
            ['4'] = {name = "Corporal ", payment = 1200},
            ['5'] = {name = "Sergent", payment = 1400},
            ['6'] = {name = "Lieutenant ", payment = 1600},
            ['7'] = {name = "Captail", payment = 1800},
            ['8'] = {name = "Assistant Chief", isboss = true, payment = 2000},
            ['9'] = {name = "Chief of Police", isboss = true, payment = 2200},
            ['10'] = {name = "FBI", isboss = true, payment = 2400},
        },
	},
	['ambulance'] = {label = 'EMS', type = 'ems', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = "EMS Internee", payment = 400},
            ['1'] = {name = "EMT Advanced", payment = 600},
            ['2'] = {name = "PARAMEDIC", payment = 800},
            ['3'] = {name = "SENIOR PARAMEDIC", payment = 1000 },
            ['4'] = {name = "DOCTOR", payment = 1200},
            ['5'] = {name = "Surgeon", payment = 1400},
            ['6'] = {name = "SUPERVISOR", payment = 1600},
            ['7'] = {name = "Advisor  Of EMS", payment = 1800},
            ['8'] = {name = "Assistant Chief Of EMS", isboss = true, payment = 2000},
            ['9'] = {name = "Chief Of EMS", isboss = true, payment = 2200},
        },
	},

    
	
	['realestate'] = {label = 'Real Estate', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 200},
			['1'] = {name = 'House Sales', payment = 300},
			['2'] = {name = 'Business Sales', payment = 400},
			['3'] = {name = 'Broker', payment = 500},
			['4'] = {name = 'Manager', isboss = true, payment = 600},
        },
	},
	['taxi'] = {label = 'Taxi', defaultDuty = true, offDutyPay = false,
		grades = {
        	['0'] = {name = 'Recruit', payment = 200},
			['1'] = {name = 'Driver', payment = 300},
			['2'] = {name = 'Event Driver', payment = 400},
			['3'] = {name = 'Sales', payment = 500},
			['4'] = {name = 'Manager', isboss = true, payment = 600},
        },
	},



    ["delivery"] = {
		label = "Amazon",
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = "Delivery man",
                payment = 100
            },
        },
	},
    ['mechanic'] = {
        label = 'Mechanic',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 400
            },
            ['1'] = {
                name = 'Mechanic',
                payment = 600
            },
            ['2'] = {
                name = 'Manager',
                payment = 800
            },
            ['3'] = {
                name = 'Boss',
            isboss = true,
                payment = 1000
            },
        },
    },
    ['cookies'] = {
        label = 'Cookies',
        defaultDuty = true,
        grades = {
            ['0'] = {
                name = 'Farmer',
                payment = 50
            },
            ['1'] = {
                name = 'Shopkeeper',
                payment = 75
            },
            ['2'] = {
                name = 'Manager',
                payment = 100
            },
            ['3'] = {
                name = 'Owner',
                payment = 125,
                isboss = true,
            },
        },
    },

    ['taco'] = {
		label = 'Taco Shop',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 75
            },
            ['1'] = {
                name = 'Employee',
                payment = 85
            },
            ['2'] = {
                name = 'Cook',
                payment = 100
            },
            ['3'] = {
                name = 'Manager',
                payment = 120
            },
            ['4'] = {
                name = 'CEO',
                isboss = true,
                payment = 135,
            },
        },
	},
    ['oilwell'] = {
        label = 'Oil Company',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Oilwell Operator',
                payment = 100
            },
            ['1'] = {
                name = 'Oilwell Operator tier 2',
                payment = 120
            },
            ['2'] = {
                name = 'Event Driver tier 2',
                payment = 175
            },
            ['3'] = {
                name = 'Sales',
                payment = 200
            },
            ['4'] = {
                name = 'CEO',
                isboss = true,
                payment = 250
            },
        },
},
    ['whitewidow'] = {
		label = 'Whitewidow',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = { name = 'Picker', payment = 50 },
			['1'] = { name = 'Deliverer', payment = 75 },
			['2'] = { name = 'Roller', payment = 100 },
			['3'] = { name = 'Manager', payment = 125 },
			['4'] = { name = 'Boss', payment = 150 ,isboss = true,},
        },
	},
    ['burgershot'] = {
        label = 'Burger Shot',
        type = "burgershot",
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Employee',
                payment = 400
            },
            ['1'] = {
                name = 'Cooker',
                payment = 600
            },
            ['2'] = {
                name = 'Manager',
                payment = 800
            },
            ['3'] = {
                name = 'Owner',
                isboss = true,
                payment = 1000
            },
        },
    },    
	
	['vanilla'] = {
        label = 'vanilla Unicorn',
        type = "vanilla",
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Employee',
                payment = 100
            },
            ['1'] = {
                name = 'Manager',
                payment = 150
            },
            ['2'] = {
                name = 'Owner',
                isboss = true,
                payment = 250
            },
        },
    },
	
	['tequilala'] = {
		label = 'Tequilala',
		defaultDuty = false,
		grades = {
            ['0'] = { name = 'Recruit', payment = 200 },
			['1'] = { name = 'Novice', payment = 300 },
			['2'] = { name = 'Experienced', payment = 400 },
			['3'] = { name = 'Advanced', payment = 500 },
			['4'] = { name = 'Manager', payment = 600, isboss = true, },
        },
	},
	

	
	['beanmachine'] = {
		label = 'Bean Machine',
		defaultDuty = true,
		grades = {
            ['0'] = { name = 'Recruit', payment = 200 },
			['1'] = { name = 'Novice', payment = 300 },
			['2'] = { name = 'Experienced', payment = 400 },
			['3'] = { name = 'Advanced', payment = 500 },
			['4'] = { name = 'Manager',  payment = 600, isboss = true, },
        },
	},
	
	['fire'] = {
		label = 'Fire Fighter',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Employee',
                payment = 100
            },            
			['1'] = {
                name = 'Captain',
                isboss = true,
                payment = 200
            },
        },
	},
	
	["upnatoms"] = {
		label = "Up-N-Atoms Employee",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = "Trainee",
                payment = 200
            },
			['1'] = {
                name = "Employee",
                payment = 300
            },
			['2'] = {
                name = "Burger Flipper",
                payment = 400
            },
			['3'] = {
                name = "Manager",
                payment = 500
            },
			['4'] = {
                name = "CEO",
                isboss = true,
                payment = 600
            },
        },
	},
	
    ['mesanuxta'] = {
		label = 'Mesanuxta',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 200
            },
			['1'] = {
                name = 'Employee',
                payment = 300
            },
			['2'] = {
                name = 'Manager',
                payment = 400
            },
			['3'] = {
                name = 'Owner',
                isboss = true,         
                payment = 500
            },
        },
	},
	['uwu'] = {
		label = 'Cat Cafe',
		defaultDuty = true,
		grades = {
            ['0'] = { name = 'Recruit', payment = 200 },
			['1'] = { name = 'Novice', payment = 300 },
			['2'] = { name = 'Experienced', payment = 400 },
			['3'] = { name = 'Advanced', payment = 500 },
			['4'] = { name = 'Manager', payment = 600, isboss = true, },
        },
	},

    ['pizzathis'] = {
		label = 'Pizza This',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = { name = 'Recruit', payment = 200 },
			['1'] = { name = 'Novice', payment = 300 },
			['2'] = { name = 'Experienced', payment = 400 },
			['3'] = { name = 'Advanced', payment = 500 },
			['4'] = { name = 'Manager',  payment = 600, isboss = true, },
        },
	},
    
	
	
   
    ['recycle'] = {
		label = 'Recycle',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Employee',
                isboss = true,
                payment = 120
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
                payment = 200
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 300
            },
			['2'] = {
                name = 'Business Sales',
                payment = 400
            },
			['3'] = {
                name = 'Finance',
                payment = 500
            },
			['4'] = {
                name = 'Manager',
                isboss = true,			
                payment = 600
            },
        },
	},
	
}