fx_version 'bodacious'
game 'gta5'

lua54 'yes'

shared_script 'config.lua'
client_script 'client/main.lua'
server_script 'server/main.lua'

ui_page 'html/index.html'
files {
    'html/*',
    'html/**/*',
    'html/**/**/*',
    'html/**/**/*'
}

escrow_ignore {
    'config.lua'
}
dependency '/assetpacks'