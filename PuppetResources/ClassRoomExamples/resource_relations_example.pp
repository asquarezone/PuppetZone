

service { 'tomcat':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    require    => Package['tomcat'],
    # pattern    => 'tomcat',
}

package { 'tomcat':
    ensure => installed,
    before => Service['tomcat'],
}