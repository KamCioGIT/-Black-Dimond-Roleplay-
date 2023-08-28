lua54 'yes'
fx_version 'cerulean'
game 'gta5'


client_scripts { 'config.lua', 'client.lua', 'new.lua' }

server_scripts { 'config.lua', '@mysql-async/lib/MySQL.lua','server.lua', 's4http.js'}
 
 

ui_page "nui/ui.html"

files {
	"nui/ui.html",
	"nui/fonts/*.ttf",
	"nui/properties/*.png",
	"nui/interiors/*.png",
	"nui/garages/*.png",
	"nui/items/*.png",
	"nui/s4.png",
	"nui/door_handle.png",
	"nui/style.css",
	"nui/s4.js",
	"nui/images/*.*",
}


escrow_ignore {
    'config.lua',
	'server.lua',
	'client.lua',

}

dependency '/assetpacks'