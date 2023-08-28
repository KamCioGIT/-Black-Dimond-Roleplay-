fx_version 'bodacious'
game 'gta5'
author "FiveM Store"
description "Plate Changer for QBCore Framework"

ui_page {
	'html/index.html',
}

files {
	'html/font/*.otf',
	'html/font/*.ttf',
	'html/css/*.css',
	'html/js/*.js',
	'html/index.html'
}

client_scripts {
	'client.lua',
}

server_script 'server.lua'