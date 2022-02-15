fx_version 'cerulean'
games { 'rdr3', 'gta5' }

name 'Clear Chat'
description 'This script clears the in-game chat!'
author 'Breezy#0001'
version 'v1.0.0'
version '1.0'

client_scripts {

}
server_scripts {
	"server.lua",
}


file 'style.css'

chat_theme 'gtao' {
    styleSheet = 'style.css',
    msgTemplates = {
        default = '<b>{0}</b><span>{1}</span>'
    }
}