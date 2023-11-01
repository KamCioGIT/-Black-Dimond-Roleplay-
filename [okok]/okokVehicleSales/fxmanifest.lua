fx_version 'cerulean'

game 'gta5'

author 'okok#3488'
description 'okokVehicleSales'
version '1.0.0'

ui_page 'web/ui.html'

files {
	'web/*.*',
	'web/img/*.png',
	'*.json'
}

shared_scripts {
	'@ox_lib/init.lua',
	'config.lua'
}

client_scripts {
	'locales/*.lua',
	'cl_utils.lua',
	'client.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'locales/*.lua',
	'sv_utils.lua',
	'server.lua'
}

lua54 'yes'

escrow_ignore {
	'config.lua',
	'sv_utils.lua',
	'cl_utils.lua',
	'locales/*.lua',
}

dependencies {
	'ox_lib'
}
dependency '/assetpacks'