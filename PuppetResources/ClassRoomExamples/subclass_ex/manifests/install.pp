# Class: install
#
#
class subclass_ex::install {
    # resources

    package { 'tomcat':
        ensure => installed,
        notify => Class['myservice']
        
    }

    
}