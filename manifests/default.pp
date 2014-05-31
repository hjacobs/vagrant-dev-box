# remove chef as we use puppet for provisioning
package {
    ['chef']:
        ensure => 'purged';
}

class python {
    package {
        [
        'build-essential',
        'ipython',
        'pep8',
        'pyflakes',
        'python-dev',
        'python-imaging',
        'python-jinja2',
        'python-ldap',
        'python-lxml',
        'python-netaddr',
        'python-pip',
        'python-psycopg2',
        'python-redis',
        'python-setuptools'
        ]:
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
    # dstat: nice statistics
    # apache2-utils: Apache Bench (ab)
    # optipng, jpegoptim: image optimizations
    [
    'apache2-utils',
    'bzip2',
    'dstat',
    'jpegoptim',
    'lsof',
    'optipng',
    'rsync',
    'strace',
    'tcpdump',
    'unzip',
    'w3m',
    'zip'
    ]:
        ensure => 'installed';

    ['openvpn']:
        ensure => 'installed';

    ['nodejs', 'npm']:
        ensure => 'installed';

    ['redis-server', 'memcached']:
        ensure => 'installed';

    ['ldapvi', 'ldap-utils']:
        ensure => 'installed';

    # C++ stuff
    ['libjansson-dev', 'libpcre3-dev', 'libzip-dev', 'libxml2-dev', 'libncurses5-dev', 'libpqxx-dev', 'liblog4cplus-dev']:
        ensure => 'installed';
}

include vim
include git
include codevalidator
include python
include java
include postgresql
