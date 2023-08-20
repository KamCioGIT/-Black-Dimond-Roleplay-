name "qb-inventory"
author "Mr_Dx#0879"
version "7.0"
description "Made By Mr_Dx"
fx_version "cerulean"
game "gta5"
lua54 'yes'

shared_scripts {
	'config.lua',
	'@qb-weapons/config.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/main.lua'
}

client_script 'client/main.lua'

ui_page {
	'html/ui.html'
}

files {
	'html/ui.html',
	'html/css/main.css',
	'html/js/app.js',
	'html/images/*.svg',
	'html/images/*.png',
	'html/images/*.jpg',
	'html/ammo_images/*.png',
	'html/attachment_images/*.png',
	'html/fonts/MoldeCondensedBold.ttf',
}

dependency 'qb-weapons'

lua54 'yes'

dependency '/assetpacks'