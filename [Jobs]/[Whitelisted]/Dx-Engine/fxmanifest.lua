fx_version 'cerulean'
games { 'gta5' }

-- [[ Author ]] --
author 'AnnaLou. <https://discordapp.com/users/585839151564193812>'
description 'Annalouu | Engine Swap!'
github 'https://github.com/Annalouu/an-engineswap'

-- [[ Version ]] --
version '1.0.0'

-- [[ Dependencies ]] --
dependencies { 
  'qb-core',
  'PolyZone',
}

-- [[ Files ]] --
shared_scripts { 
  'shared/*.lua',
}

server_scripts {
  -- SQL
  '@mysql-async/lib/MySQL.lua',
  -- Server Events
  'server/*.lua',
}

client_scripts { 
  -- Polyzone
  '@PolyZone/client.lua',
  '@PolyZone/BoxZone.lua',
  '@PolyZone/EntityZone.lua',
  '@PolyZone/CircleZone.lua',
  '@PolyZone/ComboZone.lua',
  -- Client Events
  'client/*.lua',
}

-- [[ Tebex ]] --
lua54 'yes'
