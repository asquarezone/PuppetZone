class apache_ex::install ($package_name = 'httpd') {
    package { $package_name:
        ensure => installed,
    }

    $apache_install_message="Apache Server is installed"

    notify { $apache_install_message: } 
    
}