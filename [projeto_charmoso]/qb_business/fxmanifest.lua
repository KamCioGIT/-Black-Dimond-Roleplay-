fx_version 'bodacious'
game 'gta5'
author 'Lixeiro Charmoso#1104'

ui_page "nui/ui.html"

lua54 'yes'

escrow_ignore {
	'config.lua',
	'client.lua',
	'utils.lua',
	'server_utils.lua',
	'lang/*.lua',
}

client_scripts {
	"lang/*.lua",
	
	"config.lua",
	"utils.lua",
	"client.lua",
}

server_scripts {
	"@mysql-async/lib/MySQL.lua",
	
	"lang/*.lua",

	"config.lua",
	"server_utils.lua",
	"server.lua"
}

files {
	"nui/ui.html",
	"nui/panel.js",
	"nui/style.css"
}
dependency '/assetpacks'