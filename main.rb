# main.rb

# An implementation of my Overwatch conversion program - primarily for learning purposes of Ruby!
# Therefore there will probably be an excessive amount of comments in this version, and most likely some 
# poor Ruby coding practices. I hope to fix all of those in future Ruby projects!

require_relative 'menu.rb' # require_relative can be used because the location of the files I'm loading are in the same directory
require_relative 'cm_converter.rb'
require_relative 'sens_equalizer.rb'


header() #initial menu header

user_choice = call_menu()
evaluate_option(user_choice)