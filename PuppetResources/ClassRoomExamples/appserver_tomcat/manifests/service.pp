# Class: service
#
#
class appserver_tomcat::service {
    # resources
     $package_name = $facts['os']['family']?{
        'RedHat' => 'tomcat',
        'Debian' => 'tomcat7',
    }

# This resource enables the tomcat service

     service { $package_name:
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        # pattern    => $package_name,
    }
}