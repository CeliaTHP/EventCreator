# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'

Me = User.new("me@me.fr", 20)
You = User.new("you@you.fr", 26)
Blue = User.new("blue@blue.fr", 32)
Alpha = User.new("alpha@alpha.fr", 1)
Omega = User.new("omega@ui.fr", 24)

Event.new("2019-04-20 09:00", 60, "Hellfest")
Event.new("2019-06-26 04:20", 60, "Jap")
Event.new("2019-10-06 09:00", 60, "Festifloux")
Event.new("2019-12-28 20:30", 60, "Date")
Event.new("2019-06-20 13:30", 60, "Patobeur")
# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.
binding.pry
puts "end"
