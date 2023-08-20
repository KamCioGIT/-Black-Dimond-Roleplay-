
fx_version "cerulean"
games { "gta5" }

author "Philipp Decker"
description "Track any vehicle across the map!"
version "2.1.0"

lua54 "yes"

escrow_ignore {
	"Log.lua",
	"config.lua",
	"server/server.lua",
	"client/client.lua"
}

dependencies {
	"/onesync",
	"kimi_callbacks",
	"NativeUI"
}

server_scripts {
---	"@mysql-async/lib/MySQL.lua",

	"Log.lua",
	"server/versionChecker.lua",

	"config.lua",

	"server/server_encrypted.lua",
	"server/server.lua"
}

client_scripts {
	"@NativeUI/NativeUI.lua",

	"Log.lua",

	"config.lua",

	"client/client_encrypted.lua",
	"client/client.lua"
}

dependency '/assetpacks'