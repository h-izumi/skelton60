Pry.config.color = true

if defined?(PryByebug)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
end

Pry.config.prompt = Pry::Prompt[:rails][:value]

require 'awesome_print'
AwesomePrint.pry!

# vim: ft=ruby
