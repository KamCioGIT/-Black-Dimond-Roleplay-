fx_version 'cerulean'
game 'gta5'
version '1.2.9'
lua54 'yes'
author 'hsn361'
shared_scripts {
	'shared/*.lua',
	'shared/*.json',

}
client_scripts {
	'GetFrameworkObject.lua',
	'client/*.lua',
}
server_scripts {
	-- '@mysql-async/lib/MySQL.lua', --:warning:PLEASE READ:warning:; Uncomment this line if you use 'mysql-async'.:warning:
	'GetFrameworkObject.lua',
	'@oxmysql/lib/MySQL.lua', --:warning:PLEASE READ:warning:; Uncomment this line if you use 'oxmysql'.:warning:
	'server/*.lua',
}

ui_page "html/index.html"
files {
	'html/index.html',
	'html/css/*.css',
	'html/fonts/*.TTF',
	'html/fonts/*.*',
	'html/template/*.png',
	'html/sound/*.ogg',
	'html/itemimages/*.png',
	'html/js/*.js',
	'html/js/**/*.js',
	'html/pages/**/*.js',
	'html/pages/**/*.html',
}

lua54 'yes'

exports {
	'CheckItemValid',
	'GetClientPlayerInventory',
	'OpenStash',
	'Search',
	'SearchDead'
}


escrow_ignore { 'client/functions.lua', 'shared/*.lua', 'client/weapondraw.lua', 'server/functions.lua',
	'server/bot_Token.lua',
	'server/itemconvert.lua', 'GetFrameworkObject.lua', }

dependency '/assetpacks'