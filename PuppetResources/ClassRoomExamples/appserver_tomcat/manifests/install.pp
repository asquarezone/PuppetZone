class appserver_tomcat::install ($package_name,$install_message) {
    package { $package_name:
        ensure => installed,
    }

    notify { $install_message: } 
    
}