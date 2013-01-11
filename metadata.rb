maintainer       "Evntlive"
maintainer_email "gmorejon@evntlive.com"
license          "All rights reserved"
description      "Installs/Configures hubot"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

%w{ build-essential git redis node }.each do |deps|
      depends deps
end
