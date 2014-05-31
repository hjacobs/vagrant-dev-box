# remove chef as we use puppet for provisioning
package {
    ['chef']:
        ensure => 'purged';
}

class python {
    package {
        ['python-lxml', 'pep8', 'pyflakes', 'python-redis', 'python-jinja2', 'python-psycopg2', 'python-pip', 'ipython', 'python-ldap', 'python-netaddr', 'python-setuptools', 'python-dev', 'build-essential']:
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
    ['dstat', 'apache2-utils', 'rsync', 'strace', 'tcpdump', 'w3m', 'zip', 'bzip2', 'lsof', 'unzip']:
        ensure => 'installed';

    ['openvpn']:
        ensure => 'installed';

    ['nodejs', 'npm']:
        ensure => 'installed';

    ['redis-server', 'memcached']:
        ensure => 'installed';

    ['ldapvi', 'ldap-utils']:
        ensure => 'installed';
}

include vim
include git
include codevalidator
include python
include java
include postgresql
