Pry.config.color = true

Pry.commands.alias_command 'c', 'continue'
Pry.commands.alias_command 's', 'step'
Pry.commands.alias_command 'n', 'next'
Pry.commands.alias_command 'f', 'finish'


Pry.config.prompt = Pry::Prompt[:rails][:value]

require 'awesome_print'
AwesomePrint.pry!

# vim: ft=ruby
