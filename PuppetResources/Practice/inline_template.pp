$downtime = "17:00"

$message = @(BEGIN)
welcome to the server: <%= @facts['networking']['fqdn'] %>
This is managed by puppet
The server will be shutdown <%= @downtime %>
BEGIN

file { '/etc/motd' :
	ensure => 'file' ,
	content => inline_template($message)
}