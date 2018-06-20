# menu.rb
# Includes: Menu Implementation (visual) and Menu functionality

require_relative 'cm_converter.rb'
require_relative 'sens_equalizer.rb'

def header()
	print "--------------------------------------------------------------------\n"
	print "|               OVERWATCH cm/360 converter | Ruby                  |\n"
	print "|                                                                  |\n"
	print "|                         by Alex Haase                            |\n"
	print "--------------------------------------------------------------------\n"
end


def call_menu()
	print "------------------------------------------\n"
	print "| 1. Cm/360 converter application        |\n"
	print "| 2. Sensitivity equalizer application   |\n"
	print "| 3. FAQ                                 |\n"
	print "| 4. Exit                                |\n"
	print "------------------------------------------\n\n"
	
	print "Please choose a menu option (the corresponding integer, no punctuation): "
	menu_choice = gets
	print "\n"
	return menu_choice.to_i
end


def cm_360_header()
	print "------------------------------------------\n"
	print "|      Cm/360 converter application      |\n"
	print "------------------------------------------\n\n"
end

def sens_equalizer_header()
	print "------------------------------------------\n"
	print "|    Sensitivity equalizer application   |\n"
	print "------------------------------------------\n\n"
end

def faq_header()
	print "------------------------------------------\n"
	print "|                   FAQ                  |\n"
	print "------------------------------------------\n\n"
end


def validate_menu_option(menu_choice)
	if menu_choice == 1 ||
	   menu_choice == 2 ||
	   menu_choice == 3 ||
	   menu_choice == 4
	   return true
	else return false
	end
end


def print_faq_contents()
	puts "USES FOR THE APPLICATION";
	puts "------------------------";
	puts "Like many FPS games, Overwatch uses its own native sensitivity settings along with a users mouse DPI to allow a character to produce movement. Sensitivity varies heavily based on the game, so it is necessary to standardize an input method to achieve some form of normality. This can be accomplished by understanding how many centimeters of mouse movement it takes to move your character in one 360 degree rotation.\n\n"

	puts "UNDERSTANDING YOUR CM/360 RESULT"
	puts "--------------------------------"
	puts "A valid way to interpret your own cm/360 result from this program is to compare it to the settings from professional Overwatch players. As the cm/360 is universal, the output can be understood despite varying hardware / software setups, and is a valid way to interpret sensitivity settings with other players.Personally, I play on 1000 DPI with 6.5 in - game sens, which equates to 21.31 cm/360. This means that I have to move my mouse 21.31 cm for my in - game character to achieve one full 360 degree rotation. These settings are very similar to Saebyolbe's (professional player for team New York Excelsior), even though he plays at 810 DPI and 7.93 in-game sens! For reference, this is a very high sensitivity, most players are around the mid 30s range."
end



def evaluate_option(menu_choice)

	menu_validation = validate_menu_option(menu_choice) # bool - asserts the value of menu_choice is (1-4)
	if menu_validation == false
		print "Not a valid choice! Please re-enter a valid integer: "
		redo_menu_choice = gets
		menu_choice = redo_menu_choice.to_i # fixed an error here - previously I didn't have the to_i, which seems to have made the comparison in the following boolean a string to int comparison, which was not properly evaluated
	end

	if menu_choice == 1
		cm_360_header()
		cm_360_application()
	elsif menu_choice == 2
		sens_equalizer_header()
		sens_equalizer_application()
	elsif menu_choice == 3
		faq_header()
		print_faq_contents()
	elsif menu_choice == 4
		Process.exit(0)
	else
		print "Not a valid choice! Please re-enter a valid integer: "
	end
end
