#
# Cookbook Name:: hubot
# Recipe:: default
#
# Copyright 2012, Evntlive, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe "build-essential"
include_recipe "git"
include_recipe "redis::server"
include_recipe "node"

package "libexpat1-dev"
package "libssl-dev"

node_npm "coffee-script"

git "/opt/hubot" do
  repository "git://github.com/github/hubot.git"
  revision node[:hubot][:version]
  action :sync
end

campfire = data_bag_item('hubot','campfire')
template "/etc/init/hubot.conf" do
  source "hubot.conf.erb"
  owner  "root"
  group  "root"
  mode   0744
  variables :campfire => campfire
end

bash "install hubot" do
  user  "root"
  group "root"
  code <<-EOS
    cd /opt/hubot
    npm install
  EOS
end
