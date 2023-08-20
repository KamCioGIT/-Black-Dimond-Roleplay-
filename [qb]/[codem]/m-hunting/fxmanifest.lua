fx_version 'adamant'
lua54 'yes'
game 'gta5'
author 'CodeM'
version '1.1'


ui_page 'ui/index.html'

client_scripts {
    'GetFrameworkObject.lua',
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'config.lua',
    'client.lua',
    'client-editable.lua'
}

server_scripts {
    'GetFrameworkObject.lua',
    'config.lua',
    'server.lua',
    'editable.lua'
}


files {
    'ui/index.html',
    'ui/css/*.css',
    'ui/fonts/*.otf',
    'ui/fonts/*.ttf',
    'ui/img/*.png',
    'ui/js/*.js'
}

escrow_ignore {
    'config.lua',
    'client-editable.lua',
    'editable.lua'
}
dependency '/assetpacks'