fx_version 'cerulean'
game 'gta5'
version '0.5'
author 'Paru'

shared_script 'config.lua'

client_scripts {
    'client/main.lua',
}

shared_scripts {
    '@ox_lib/init.lua',
    '@qbx_core/modules/playerdata.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua'
}

lua54 'yes'