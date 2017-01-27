# Class: cyclos
# ===========================
#
# Full description of class cyclos here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'cyclos':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2017 Your name here, unless otherwise noted.
#
# This module is developed based on documentation present @ https://www.cyclos.org/wiki/index.php/Installation_%26_maintenance
class cyclos {

    #install java based out of puppet forge puppetlabs/java and documentation @ https://forge.puppet.com/puppetlabs/java
    java::oracle { 'jdk6':
        ensure  => 'present',
        version => '6',  
    }

    #download cyclos
    include cyclos::downloadcyclos

    
   


}
