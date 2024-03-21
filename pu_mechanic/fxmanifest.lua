fx_version 'cerulean'
game 'gta5'
description 'Advanced Mechanic job for QBX'
version '1.0'
author 'Paru'
lua54 'yes'

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
