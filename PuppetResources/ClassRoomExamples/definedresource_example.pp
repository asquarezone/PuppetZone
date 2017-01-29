define remote_file($remote_location=undef, $mode='0644'){
  exec{"retrieve_${title}":
    command => "/usr/bin/wget -q ${remote_location} -O ${title}",
    creates => $title,
  }

  file{$title:
    mode    => $mode,
    require => Exec["retrieve_${title}"],
  }
}

remote_file{'/home/vagrant/bin/lein':
  remote_location => 'https://raw.github.com/technomancy/leiningen/stable/bin/lein',
  mode            => '0755',
}




define echo($message = undef){
    exec { "echo_${title}" :
       command => "echo ${message}"

    }
}

echo { 'myecho':
   message => 'hi' 

}

echo { 'test':
  message => 'hello',
  name => 'test1'
}