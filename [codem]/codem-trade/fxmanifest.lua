
fx_version 'cerulean'

author 'Aiakos#8317'

game 'gta5'

client_scripts {
    'GetFrameworkObject.lua',
    'config/config.lua',
    'client/client.lua',
}
server_scripts {
    'GetFrameworkObject.lua',
    'config/config.lua',
    'config/server_config.lua',
    'server/editable.lua',
    'server/server.lua',
}
ui_page 'html/index.html'


escrow_ignore {
    'config/server_config.lua',
    'server/editable.lua',
    'config/config.lua',
    'GetFrameworkObject.lua',
	
	
}

files {
    'html/index.html',
    'html/images/*.png',
    'html/itemimages/*.png',
    'html/fonts/*.OTF',
    'html/fonts/*.otf',
    'html/fonts/*.ttf',
    'html/index.js',
}

lua54 'yes'

dependencies {
	'/onesync'
}
dependency '/assetpacks'