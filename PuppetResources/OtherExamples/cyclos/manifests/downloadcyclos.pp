class cyclos::downloadcyclos($install_path='/home/vagrant'){
     $cyclos_path = "https://downloads.sourceforge.net/project/cyclos/Cyclos3/3.7.3/cyclos_3.7.3.zip"
    file { $install_path :
        ensure => present ,
        source => $cyclos_path
    }

}