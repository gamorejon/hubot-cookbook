#The github tag to pull
default[:hubot][:version] = "v2.3.4"
default[:hubot][:dir]     = "/opt/hubot"
default[:hubot][:bin]     = "#{node[:hubot][:bin]}/bin/hubot"
default[:hubot][:user]    = "hubot"
default[:hubot][:group]   = "hubot"
default[:hubot][:port]    = "5555"
default[:hubot][:adapter] = "campfire"

#Campfire specific stuff
default[:hubot][:campfire_account] = ""
default[:hubot][:campfire_rooms]   = ""
default[:hubot][:campfire_token]   = ""
