class myservice {
    service { "tomcat":
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        # pattern    => 'tomcat',
    }
}