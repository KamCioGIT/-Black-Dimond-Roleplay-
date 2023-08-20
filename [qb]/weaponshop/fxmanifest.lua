fx_version 'adamant'

version 'v1.2'

game 'gta5'

description "codem-weaponshop"

shared_script{
	'config.lua',
	'GetFrameworkObject.lua',

}

client_scripts {
    'GetFrameworkObject.lua',
    'config.lua',
    'client.lua',
    
    
}
server_scripts {
    'GetFrameworkObject.lua',
    'config.lua',
    'server.lua',
    
} 


ui_page {
    'html/index.html',
}
files {
    'html/index.html',
    'html/style.css',
    'html/script.js',
    'html/images/*.png',
    'html/fonts/*.ttf',
    'html/fonts/*.otf',
}

escrow_ignore{
    'config.lua',
    'attachments.lua',
}

lua54 'yes'
dependency '/assetpacks'