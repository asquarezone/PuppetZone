class cyclos::install_tomcat{

    $tomcat_package_name= $facts['os']['family'] ? {
        'RedHat' => 'tomcat',
        'Debian' => 'tomcat7',
    }

    package { $tomcat_package_name:
        ensure => installed,
        before => Service[$tomcat_package_name]
    }

    service { $tomcat_package_name:
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        # pattern    => $tomcat_package_name,
    }

}