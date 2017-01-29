class apache_ex::service($service_name='httpd'){

    service { $service_name:
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,        
        # pattern    => $service_name,
    }

    $service_message = hiera('apache_ex::service_message')
    notify { $service_message: } 
    
}