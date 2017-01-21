
case $facts['os']['name'] {
    'Centos': {
        # code
        notify { 'Iam in Centos': } 
        
    }
    'Ubuntu' :{
        notify { 'Iam in Ubuntu': } 

    }
    'Fedora' : {
        notify { 'Iam in Fedora': } 

    }
    'OpenSuse' : {
        notify { 'Iam in OpenSuse': } 

    }
    default: {
        # code
        notify { "Iam lost please help. Iam in os named ${facts['os']['name']}": } 
    }
}