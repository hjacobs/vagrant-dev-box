# remove chef as we use puppet for provisioning
package {
    ['chef']:
        ensure => 'purged';
}

class python {
    package {
        ['python-lxml', 'pep8', 'pyflakes', 'python-redis', 'python-jinja2', 'python-psycopg2', 'python-pip', 'ipython']:
            ensure => 'installed';

        ['PyYAML', 'CherryPy']:
            provider => 'pip',
            ensure => 'installed';
    }
}

class postgresql {
    package {
        'postgresql-9.3':
            ensure => 'installed';
    }
}

class java {
    package {
        ['openjdk-7-jdk', 'maven']:
            ensure => 'installed';
    }
}

package {
    ['dstat']:
        ensure => 'installed';

    ['openvpn']:
        ensure => 'installed';

    ['nodejs', 'npm']:
        ensure => 'installed';

    ['redis-server', 'memcached']:
        ensure => 'installed';
}

include vim
include python
include postgresql
include java
include git
include codevalidator
