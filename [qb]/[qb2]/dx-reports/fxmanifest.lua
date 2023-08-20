fx_version 'cerulean'
game 'gta5'
author 'FiveM Store'
description 'Report System for QBCore Framework'
version '1.0.0'

ui_page 'web/ui.html'

files {
	'web/*.*',
}

shared_script 'config.lua'

client_scripts {
	'client.lua',
}

server_scripts {
	'server.lua',
}
