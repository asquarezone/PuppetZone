class appserver_tomat::params{
    $package_name = $facts['os']['family']?{
        'RedHat' => 'tomcat',
        'Debian' => 'tomcat7',
    }

    $install_message = "${package_name} is installed"

    $service_message ="${package_name} service is running"
}