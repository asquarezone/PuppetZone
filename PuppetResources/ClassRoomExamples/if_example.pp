$os_name =$facts['os']['name']
if  $os_name == 'Centos'{
    notify { 'Iam in Centos': } 
} elsif $os_name == 'Ubuntu' {
    notify { 'Iam in Ubuntu': } 
} elsif $os_name == 'Fedora' {
    notify { 'Iam in Fedora': } 
} elsif $os_name == 'OpenSuse' {
    notify { 'Iam in OpenSuse': } 
} else {
    notify { "Iam lost please help. Iam in os named ${facts['os']['name']}": } 
}
