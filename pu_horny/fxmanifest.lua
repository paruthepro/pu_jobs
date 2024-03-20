fx_version 'cerulean'
game 'gta5'

lua54 'yes'

author 'Paru'
description 'Burgershot Job by Paru'
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
