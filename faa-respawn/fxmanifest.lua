fx_version 'cerulean'
game 'gta5'

author 'Your Name'
description 'ESX Auto Revive dan Respawn Otomatis'
version '1.0.0'

shared_script '@es_extended/imports.lua'

server_scripts {
    '@es_extended/locale.lua',
    'server/main.lua'
}

client_scripts {
    '@es_extended/locale.lua',
    'client/main.lua'
}

dependency 'es_extended'
dependency 'esx_ambulancejob'