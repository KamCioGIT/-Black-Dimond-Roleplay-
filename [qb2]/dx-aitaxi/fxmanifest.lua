fx_version 'cerulean'
game 'gta5'
author 'FiveM Store'
description 'AI Taxi for QBCore Framework'
version '1.1.0'


client_scripts {
   'client/vehicle.lua',
   'client/client.lua'
}

server_script {
   'server/server.lua'
}

shared_script 'config.lua'

lua54 'yes'