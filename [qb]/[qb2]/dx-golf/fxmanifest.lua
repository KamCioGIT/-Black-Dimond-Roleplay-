fx_version 'cerulean'
game 'gta5'
author 'FiveM Store'
description 'Gold Script for QBCore Framework'
version '1.1.0'

client_scripts {
    'translations.lua',
    'config.lua',
    'shared/shared_utils.lua',
    'client/client.lua'
}

server_scripts {
    'translations.lua',
    'config.lua',
    'shared/shared_utils.lua',
    '@oxmysql/lib/MySQL.lua',
    'server/server.lua'
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/js/*.js',
    'html/DEP/*.js',
    'html/img/**',
    'html/ProximaNova.woff'
}

dependencies {
    'oxmysql'
}