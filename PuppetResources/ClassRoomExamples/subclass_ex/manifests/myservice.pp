class myservice($service_name= params::$package_name) inherits params{
    service { $service_name:
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        # pattern    => 'tomcat',
    }
}