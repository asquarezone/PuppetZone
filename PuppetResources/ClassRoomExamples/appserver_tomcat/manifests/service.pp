# Class: service
#
#
class appserver_tomcat::service (
    $service_name = $appserver_tomcat::params::package_name,
    $service_message = $appserver_tomcat::params::service_message
    ) inherits appserver_tomcat::params {
    

# This resource enables the tomcat service

     service { $service_name:
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        # pattern    => $package_name,
    }
}