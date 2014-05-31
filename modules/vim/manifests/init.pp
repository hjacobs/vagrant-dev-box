class vim {
    package {
        ['vim', 'vim-puppet', 'vim-addon-manager']:
            ensure => 'installed';
    }
    file {
        '/etc/vim/vimrc.local':
            ensure => 'file',
            source => 'puppet:///modules/vim/vimrc';
    }
}
