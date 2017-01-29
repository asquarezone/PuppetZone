$osname= $facts['os']['name']

$erb_message= @(BEGIN)
#This is managed by puppet 
# operating System = <%= @osname %>
# This is erb template
BEGIN

notify { inline_template($erb_message): } 

$epp_message= @(BEGIN)
#This is managed by puppet 
# operating System = <%= $osname %>
# This is epp template
BEGIN

notify{ inline_epp($epp_message):}