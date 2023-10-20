fx_version 'cerulean'
game 'gta5'

description 'Cloudz Framework Apartments'
version '1.0.0'

shared_scripts {
    'init.lua',
    'shared/sh_*.lua',
}

server_scripts {
    'server/sv_*.lua'
}

client_scripts {
    'client/cl_*.lua'
}

lua54 'yes'
use_fxv2_oal 'yes'
