# Class: install
#
#
class subclass_ex::install($package_name= params::$package_name) 
inherits params {
    # resources

    package { $package_name:
        ensure => installed,
        notify => Class['myservice']
        
    }

    
}