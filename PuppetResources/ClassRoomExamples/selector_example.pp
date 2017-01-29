
#if $facts['os']['family'] == 'RedHat' {
#    $package_name = 'httpd'
#}
#else {
#    $package_name = 'apache2'
#}

$package_name = $facts['os']['family'] ? {
    'RedHat' => 'httpd' ,
    'Debian' => 'apache2' ,
}

notify { $package_name: } 

