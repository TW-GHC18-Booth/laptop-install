#!/bin/bash -
curl -L https://get.rvm.io | bash -s stable --auto-dotfiles --autolibs=enable --ruby
rvm install ruby-2.4.0
rvm install ruby-2.5.0