fx_version 'cerulean'
games { 'gta5' }
author 'FiveM Store'
description 'Car Radio for QBCore Framework'
version '1.2.0'

ui_page 'html/index.html'

files {
	'html/index.html',
	'html/script.js',
	'html/*.svg',
	'html/radio.png',
	'html/main.css',
}

shared_script 'config.lua'
client_script 'client/main.lua'
server_script 'server/main.lua'

