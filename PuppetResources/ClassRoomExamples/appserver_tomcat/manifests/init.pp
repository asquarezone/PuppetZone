# Class: appserver_tomcat
# ===========================
#
# Full description of class appserver_tomcat here.
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
#    class { 'appserver_tomcat':
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
class appserver_tomcat {
#    $package_name = $facts['os']['family']?{
#        'RedHat' => 'tomcat',
#        'Debian' => 'tomcat7',
#    }

 #   class { appserver_tomcat::install :
 #       package_name => $package_name ,
 #       install_message => "${package_name} is installed "
 #
 #   }

    #include appserver_tomcat::install

  #  class { appserver_tomcat::service :
  #      package_name => $package_name ,
  #
  #  }

  include appserver_tomcat::install

  include appserver_tomcat::service

   

}
