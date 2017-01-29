class params {
    $package_name = $facts['os']['family'] ? {
        'RedHat' => 'httpd',
        'Debian' => 'apache2',
    }
}