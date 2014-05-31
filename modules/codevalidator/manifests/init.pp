class codevalidator {
    file {
        '/etc/codevalidatorrc':
            ensure => 'file',
            source => 'puppet:///modules/codevalidator/codevalidatorrc';
    }

    exec {
        'git-clone-codevalidator':
            cwd => '/opt',
            command => '/usr/bin/git clone https://github.com/hjacobs/codevalidator',
            creates => '/opt/codevalidator',
            require => Package[git];
    }

    file {
        '/usr/local/bin/codevalidator.py':
            ensure => 'link',
            target => '/opt/codevalidator/codevalidator.py';
    }
}
