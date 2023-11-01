local QBCore = exports['qb-core']:GetCoreObject()

local Webhooks = {

    ['default'] = 'https://discord.com/api/webhooks/1156623063304130630/blf-TxLUcWGTAIHsp_Uyxp8vdAJPYrRXxZUcddPmkmR_Ru5k4DCXlcDmP85Y7oRjyO9_',
    ['testwebhook'] = 'https://discord.com/api/webhooks/1156624012978425996/7yUFigigDb3j40muXKddQ0ybo2t6ct3YQbH4iwImjyYa48wQCrp84sk5_Npr57rJBYPT',
    ['playermoney'] = 'https://discord.com/api/webhooks/1156624151952498769/uT1n7XV1xYvbLGfcSbuDR86GMvDZlFjaOpk_iwqAmQGnD20DeaJ6pQ70mwjMJtriINF4',
    ['playerinventory'] = 'https://discord.com/api/webhooks/1156624279211888670/eQioJv8QYYNpgDU54YdYi9we9dhle-IAh7MfINBUgwgY7-ET4Wf7_APpKT0Q1iVYLJNX',
    ['robbing'] = 'https://discord.com/api/webhooks/1156624446405214318/2l5jjMwrlLN3nEtIPtpF0-5i03U9bB80yFGWP6WXSkDGPBgvVwWAGZUi58IuTKCydSMf',
    ['cuffing'] = 'https://discord.com/api/webhooks/1156624529477603428/Vud7IQ8vPwBO1YQdoaZYSG7w0ZgCbCEMY21xJr7WhFtGimv0haUOGGJoq_2zLJ_WmVOO',
    ['drop'] = 'https://discord.com/api/webhooks/1156624683475685458/LC0BN3J6D5GvnuXwlDpHmauhwId1vicSgirT_8Y77S973sxTDkwzbVt5khoDG0XHW3F8',
    ['trunk'] = 'https://discord.com/api/webhooks/1156624895392882688/zrEMwgDtpFXC7cXBxawKluTh7Q0EDKJDtGIWnccDYbTu9f_HG-z6-tn7MIODfPdssk64',
    ['stash'] = 'https://discord.com/api/webhooks/1156624988271550485/zRQQ-OqG5Mrez1eVksMkfibH_pO-xRF8kMhwO7-ZFnQ_f62jXq0AukWP29yzVJxmPj2W',
    ['glovebox'] = 'https://discord.com/api/webhooks/1156625079166308493/7XkVah0ZWG6Wvt7vvDNOqAyD9czoC52wmgnY_Z7NTcDIyp84hbyn-xZGSuW1yrMUU0uQ',
    ['banking'] = 'https://discord.com/api/webhooks/1156625203183489064/Fw8mWOshkJK1D4fApDQM6DDepxUlnCIZiKHQq6gNUv-kDIf_sOMuC-ER6kV98fPsbRe7',
    ['vehicleshop'] = 'https://discord.com/api/webhooks/1156625382297047040/usHeeCu3iZVxX8CcgwdGpKGHrr83EyIqNOev9h7gVQXfTbpPVJsuS-4GROAIcgMzCemh',
    ['vehicleupgrades'] = 'https://discord.com/api/webhooks/1156625461267415142/F18qjRthTTSnQ_z_uUlST618skaF-8zkT95nXk_5y4o_Hi19z-KxFNXfsKguuHaZAsPA',
    ['shops'] = 'https://discord.com/api/webhooks/1156625530787987496/BihBtVQFa26JTlFkCJ_uQufudYow0ofS-9WtFGi3GMe5gbfg3PXwb_nNjbggyb9zVGPk',
    ['dealers'] = 'https://discord.com/api/webhooks/1156625584470888549/JBfMbiLHkexy93e0cTd48KyQkBvRUo0EoQAucXUOODs6YNhnh0xM37YnHVy15yQlYf7R',
    ['storerobbery'] = 'https://discord.com/api/webhooks/1156626088932413651/CJI09NUz5YT1JrwMUKlmKYRvbpfa-_IuX5-1Sm3-eMuNAOKZPGTWNBGEibOVa9fqL-cP',
    ['bankrobbery'] = 'https://discord.com/api/webhooks/1156626088932413651/CJI09NUz5YT1JrwMUKlmKYRvbpfa-_IuX5-1Sm3-eMuNAOKZPGTWNBGEibOVa9fqL-cP',
    ['powerplants'] = 'https://discord.com/api/webhooks/1156626267806912522/6F99H7NmAkuKbHKjmuqraqUegI--drpyDqD2j6WaYG6frRDWvdk3atqqwIOqNhHDhjm9',
    ['death'] = 'https://discord.com/api/webhooks/1156626447872557207/L9P6pMgGzZ2H0YwT-Ymotg0iHKfb3FSDpkoDIVUT3IX3jawLUbcoVnYjeI8uKQxOFQnB',
    ['joinleave'] = 'https://discord.com/api/webhooks/1156626575442329740/-Pd0rf5pzmWK1_LCfcNfADuxvHa_CSGJHX_QCOfilXuP02N3F8Snd7BJhNfJIlxf95nj',
    ['ooc'] = 'https://discord.com/api/webhooks/1156628946763399340/3i8bYtyNSHZp6miyv9C7v4E-H4uH5zpVXuJc6GRMTqu_1mHq-F2f5PaqSVvNCggbia6T',
    ['report'] = 'https://discord.com/api/webhooks/1156630291377565748/wf-mba8sn-pBiLdjaiequm2UFdK1U_ktgNb32lDUZOZYW5hyb_ThHFqxnj0OLhsx6vt3',
    ['me'] = 'https://discord.com/api/webhooks/1156630402354647190/v5ECbKJX9KeGTNUbEMasUOSwy0y3TJbB1-M8Yg1DKEekfUKjPRt2C5eobW4WhK4vM6m5',
    ['pmelding'] = 'https://discord.com/api/webhooks/1156630534164852776/fhcHMFpVFHwNoBibrO-QrKTimYRVLD039Ppz5r7AFaRWBrPxpCGkUl7XUKMcws__OPk2',
    ['112'] = 'https://discord.com/api/webhooks/1156630667770220564/KAw4yMa5h2JmEhHLFhsbrLOGS-SFrqMCnwxyj3REhfazXxXgeaZjIlEydOmYc0nsVlMZ',
    ['bans'] = 'https://discord.com/api/webhooks/1156630749454290944/aoZyotPW7ZWUxeDeiMcY4b2GFd9A91ceMV62tSzKlUWBDXT13By24nBfn_rd2Azr7TfO',
    ['anticheat'] = 'https://discord.com/api/webhooks/1156630854555148419/MN60WzdZIng9eWwdOnMAvA6AyFHCWcsaq4NzuaNVVpdRQ3iJH8FIvYcpKMXuIBczrtqF',
    ['weather'] = 'https://discord.com/api/webhooks/1156631520036003876/NhVDC82CcA5b70uu9jKuE9701vkiOyDuT4QPl5n63leQIDW75vHQecr94DO7fNBpgxBN',
    ['moneysafes'] = 'https://discord.com/api/webhooks/1156631622083428392/Qj5U4dAtZVu4Y7xoSjIV48qfEV3xnja43c0mm5FuQ38RJgEIq4UzPF8_c6du9yDhRIFx',
    ['bennys'] = 'https://discord.com/api/webhooks/1156631718929895465/l3_kQqYn7Em46jGTwGmsfL79NIixuMKPlxlO1xM0Z-ntLtEb507gjQoz1JRr0BcQTwJ3',
    ['bossmenu'] = 'https://discord.com/api/webhooks/1156632490056888431/b0wdL6XBUo5acK0yliunXEVdAyxmTbrGi5IRx_ayni65Q8YRyiBhC51_I6c9t-NkB2s9',
    ['robbery'] = 'https://discord.com/api/webhooks/1156632627252564087/7TmkHQ14ORQRbJdD762D2wEps7s87HPNWbV9DbV-C3VaUWh32zR2cPacahv4dZGnW9TU',
    ['casino'] = 'https://discord.com/api/webhooks/1156632870505431162/Nk121dfHxf342GDBQKnehEU3HEbwqNZf9PcCWe-ynkmcMhTqeJ_l6g5xH57bRCMnkTif',
    ['traphouse'] = 'https://discord.com/api/webhooks/1156632968228520017/TCZCkPCfE3-tus123YsEiO5HYnxZpjnsD5djxG0935UYhCAL4TakEbjmDAkibQoDY-xf',
    ['911'] = 'https://discord.com/api/webhooks/1156633104639852624/eNHNexr3AGIzFc3349coQfjEliQ1b7vHGeAeIl3tzEYuGAmdGoBXsneJBOEgf68Qxhjy',
    ['palert'] = 'https://discord.com/api/webhooks/1156633207282864198/GQFSGhwAF1J2R7XcmQ_8TJFV50hhhXybfeRObzF5cpKe46worvgIVr2v36GZ1DCzYfHq',
    ['house'] = 'https://discord.com/api/webhooks/1156633301524684900/fgjqkBfwl6lDAcvIf4ske9CqWGYdkBxCiWJxJUy6Pg-O9fJHPlKDU-UQmPsIWumJC8Qx',
    ['qbjobs'] = 'https://discord.com/api/webhooks/1156633430755381330/kuTf7PRy1FNT3SFN5JIPhMC5A8CAWtAy4NWnnikDAVpPUrSvzlf28bdlby2Ba9q0zloC',
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