Description
===========
This is a Chef cookbook for installing and setting up [HUBOT](http://hubot.github.com/ "HUBOT").

Requirements
============

Platforms
---------

The following platforms are supported by this cookbook, meaning that the recipes run on these platforms without error.

* Debian
* Ubuntu

Opscode Cookbooks
-----------------
Depends on the follwing cookbooks:

* build-essential 
* git 
* redis 
* node

To use with campfire you must first create an account for hubot to use, and then create 
a data bag called hubot with the following schema:
  {
    "id": "campfire",
    "account": "hubot_account",
    "token": "your_api_token",
    "rooms" : ["Room1","Room2",...]
  }

Attributes
==========

* `node[:hubot][:version]` - Version
* `node[:hubot][:dir]`     - Installation directory
* `node[:hubot][:bin]`     - location of hubot bin
* `node[:hubot][:user]`    - hubot user
* `node[:hubot][:group]`   - hubot group
* `node[:hubot][:port]`    - hubot's port
* `node[:hubot][:adapter]` - adapter to use (currently, only campfire works)

Usage
====

License and Author
====

Author:: Gilberto Morejon (<gmorejon@evntlive.com>)

Copyright:: 2012, Evntlive, Inc

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
=====

