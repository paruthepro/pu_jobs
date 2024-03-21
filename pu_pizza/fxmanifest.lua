fx_version 'cerulean'
game 'gta5'

lua54 'yes'

author 'Icarus'
description 'Pizza This! job by Icarus'
version '1.0'

shared_scripts {
    'config.lua',
	'@ox_lib/init.lua',
}

client_scripts {
	'client/*.lua',
}

server_scripts {
	'server/*.lua'
}
