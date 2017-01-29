class apache_ex::install ($package_name = 'httpd') {
    package { $package_name:
        ensure => installed,
    }

    $apache_install_message=hiera('apache_ex::install_message')

    notify { $apache_install_message: } 
    
}