# Class: service
#
#
class appserver_tomcat::service ($package_name) {
    

# This resource enables the tomcat service

     service { $package_name:
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        # pattern    => $package_name,
    }
}