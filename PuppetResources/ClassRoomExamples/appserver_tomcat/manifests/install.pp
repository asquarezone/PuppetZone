class appserver_tomcat::install (
    $package_name = $appserver_tomcat::params::package_name,
    $install_message = $appserver_tomcat::params::install_message
    ) inherits appserver_tomcat::params {
    package { $package_name:
        ensure => installed,
    }

    notify { $install_message: } 
    
}