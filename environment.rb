# require all files so they can talk to each other

#./ means look at the level right above me 

require 'bundler' # allows to run package to ensure everything in your is installed and require all gems listed 
Bundler.require # req all gems listed in Gemfile

require_relative "./lib/api"
require_relative "./lib/cli"
require_relative "./lib/project"