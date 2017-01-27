class cyclos::install_mysql($default_password= 'p1234',$cyclos_db_password='cyclos1234') {

    #install mysql server
    class {'mysql::server': 
        root_password => $default_password,
    }

    #create database cyclos
    mysql::db { 'cyclos3':
        ensure  => present, 
        charset => 'utf8',
        require => 'Class[mysql::server]',
    }

    # grant previlages to cyclos
    #grant all privileges on cyclos3.* to cyclos@localhost identified by 'cyclos1234';
    #create user cyclos

    mysql::user { 'cyclos@localhost':
        ensure          => present,
        password_hash   => mysql_password(cyclos_db_password),           
    }

    mysql::grant { 'cyclos@localhost/cyclos3.*':
        user        => 'cyclos@localhost',
        table       => 'cyclos3.*',
        options     => ['GRANT'],
        privileges  => ['ALL'],
    }






}