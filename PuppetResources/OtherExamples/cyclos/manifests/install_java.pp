class install_java {
    
    java::oracle { 'jdk6':
        ensure  => 'present',
        version => '6',  
    }
}