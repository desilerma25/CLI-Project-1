# require all files so they can talk to each other

#./ means look at the level right above me 

require_relative "./lib/api"
require_relative "./lib/cli"
require_relative "./lib/project"