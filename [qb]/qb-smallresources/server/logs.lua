local QBCore = exports['qb-core']:GetCoreObject()

local Webhooks = {

    ['qbjobs'] = 'https://canary.discord.com/api/webhooks/1084832401567518822/-',
    ['humanelabs'] = 'https://canary.discord.com/api/webhooks/1084832527488913469/-WRnbpZg23Sf2ihe38PV-ra1I2Cg51',
    ['default'] = 'https://discord.com/api/webhooks/1056689979574726738/JabaqrHTcz-',
    ['testwebhook'] = 'https://discord.com/api/webhooks/1056712321600331779/',
    ['playermoney'] = 'https://discord.com/api/webhooks/1056690336476446742/',
    ['playerinventory'] = 'https://discord.com/api/webhooks/1056690536037220352/',
    ['robbing'] = 'https://discord.com/api/webhooks/1056691434494894090/E3HJPu-BSrMeooCVOuWrqd6eOqj-',
    ['cuffing'] = 'https://discord.com/api/webhooks/1056691628141723738/H-',
    ['drop'] = 'https://discord.com/api/webhooks/1056691825802481735/LIzWu--ASfPbIr',
    ['trunk'] = 'https://discord.com/api/webhooks/1056692064932343910/6MruSzQG2jwOLFroYN-',
    ['stash'] = 'https://discord.com/api/webhooks/1056692244310130809/-NuivodZ8_zQtQMSb9334jsHlpGg',
    ['glovebox'] = 'https://discord.com/api/webhooks/1056692429467693066/',
    ['banking'] = 'https://discord.com/api/webhooks/1056692804643987496/-9IoNIbef0L74CpSjwUr_',
    ['vehicleshop'] = 'https://discord.com/api/webhooks/1056693278692605982/',
    ['vehicleupgrades'] = 'https://discord.com/api/webhooks/1056693458162696312/-WkVb6un2HqZW6heWfnVNA-6l8ee',
    ['shops'] = 'https://discord.com/api/webhooks/1056693665675878420/-cjZNJHr7yoiDLHrLoAL5V6vniQLM',
    ['dealers'] = 'https://discord.com/api/webhooks/1056693866704687236/47EofbcNFNfrZfWIWRC4dcavwW-',
    ['storerobbery'] = 'https://discord.com/api/webhooks/1056694082614870036/',
    ['bankrobbery'] = 'https://discord.com/api/webhooks/1056694082614870036/',
    ['powerplants'] = 'https://discord.com/api/webhooks/1056694380553043968/-5Z6e9Sxm9Od7Wwbh6sMdTo',
    ['death'] = 'https://discord.com/api/webhooks/1056694551210893412/op7Gk--aninFeyhukz-lNh8a_94Uil46Lz4Tjk6ev',
    ['joinleave'] = 'https://discord.com/api/webhooks/1056694760036900944/-omafMcIRThbu_TTx0I35v',
    ['ooc'] = 'https://discord.com/api/webhooks/1056694951775322152/UP--O1rocWbIQ2z-',
    ['report'] = 'https://discord.com/api/webhooks/1056695414339928114/QL2CTAz5gpN2LeT1_4d56WZl--6x2GUoGskfw8sQbfrXbe7zBi',
    ['me'] = 'https://discord.com/api/webhooks/1056696440212176906/',
    ['pmelding'] = 'https://discord.com/api/webhooks/1056698003953557546/6oUXqu2Edg--Zn9Hvl1Q3-bYIszMw3_XHSJux2c9tHpZz5cL',
    ['112'] = 'https://discord.com/api/webhooks/1056698195394183268/gjDSADozW5GiOvvVeq6jdhgSq6k--7JrG5h79CxzV9Cef0IR_a',
    ['bans'] = 'https://discord.com/api/webhooks/1056699664746958910/-',
    ['anticheat'] = 'https://discord.com/api/webhooks/1056700703067885689/-lt-HbzZ_ld2nGz',
    ['weather'] = 'https://discord.com/api/webhooks/1056702294609121352/-rU9FtpXmqZWS-A6uT9GbGSUN_sse_h8dnwmZB9HZO4s',
    ['moneysafes'] = 'https://discord.com/api/webhooks/1056703381357469726/',
    ['bennys'] = 'https://discord.com/api/webhooks/1056704128484659220/',
    ['bossmenu'] = 'https://discord.com/api/webhooks/1056705777764667442/',
    ['robbery'] = 'https://discord.com/api/webhooks/1056704936311787561/',
    ['casino'] = 'https://discord.com/api/webhooks/1056706737060708455/-VLx6vEGpzFMM22jJ9jEeQMQm48u--',
    ['traphouse'] = 'https://discord.com/api/webhooks/1056707675112611960/MGAjPJnTh9Sv2_b4_ucA---c03taAgx',
    ['911'] = 'https://discord.com/api/webhooks/1056708292468035756/-7CuTrtf-1WqxwhMDpEb4aN0HE6',
    ['palert'] = 'https://discord.com/api/webhooks/1056709401702055956/9tOzHkB0ZlUXomouMf-',
    ['house'] = 'https://discord.com/api/webhooks/1056710140780363856/wZwMiIapQJePQndvBZIREDzaCHQ6js4zESa-',
    ['granny'] = 'https://discord.com/api/webhooks/1056711375268888767/HyzIQb7--ggHbCP',
    ['truckrobbery'] = 'https://discord.com/api/webhooks/1056711740424982548/BkvpGzoY4R4TJ61ORE-',
    ['varheist'] = 'https://discord.com/api/webhooks/1069262418049515601/ccf-',
    ['hunting'] = '',
    ['gamble'] = '',
    ['scenes'] = 'https://discord.com/api/webhooks/1133407305308835911/',
    ['gundrop'] = 'https://discord.com/api/webhooks/1128986456363380796/-bnse',
    ['gangmenu'] = 'https://discord.com/api/webhooks/1120791315655958619/-dVbQbv7BK',
    ['warehouse'] = 'https://discord.com/api/webhooks/1105159127828799659/',
}

local Colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ["lightgreen"] = 65309,
}

RegisterNetEvent('qb-log:server:CreateLog', function(name, title, color, message, tagEveryone)
    local tag = tagEveryone or false
    local webHook = Webhooks[name] or Webhooks['default']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = Colors[color] or Colors['default'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = 'QBCore Logs',
                ['icon_url'] = 'https://media.discordapp.net/attachments/870094209783308299/870104331142189126/Logo_-_Display_Picture_-_Stylized_-_Red.png?width=670&height=670',
            },
        }
    }
    PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = 'QB Logs', embeds = embedData}), { ['Content-Type'] = 'application/json' })
    Citizen.Wait(100)
    if tag then
        PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = 'QB Logs', content = '@everyone'}), { ['Content-Type'] = 'application/json' })
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function()
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')