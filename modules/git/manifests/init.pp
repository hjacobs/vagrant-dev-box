class git {
    package {
        ['git']:
            ensure => 'installed';
    }
    file {
        '/etc/gitconfig':
            ensure => 'file',
            source => 'puppet:///modules/git/gitconfig';
    }
}
