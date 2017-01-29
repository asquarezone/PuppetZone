class cyclos::install_java {


    if $facts['os']['name'] == 'Ubuntu' {

        class { 'apt': }

        package { "python-software-properties": }

        apt::ppa { 'ppa:webupd8team/java': }

        exec {
            'set-licence-selected':
            command => '/bin/echo debconf shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections';

            'set-licence-seen':
            command => '/bin/echo debconf shared/accepted-oracle-license-v1-1 seen true | /usr/bin/debconf-set-selections';
        }

        package { 'oracle-java6-installer':
            ensure => "installed",
            require => [Apt::Ppa['ppa:webupd8team/java'], Exec['set-licence-selected'], Exec['set-licence-seen']],
        }

    }
    else {
        java::oracle { 'jdk6':
            ensure  => 'present',
            version => '6',  
        }

    }
    
    
}