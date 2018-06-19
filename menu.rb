# menu.rb
# Includes: Menu Implementation (visual) and Menu functionality

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


def validate_menu_option(menu_choice)
	if menu_choice == 1 ||
	   menu_choice == 2 ||
	   menu_choice == 3 ||
	   menu_choice == 4
	   return true
	else return false
	end
end



def evaluate_option(menu_choice)

	menu_validation = validate_menu_option(menu_choice) #bool - asserts the value of menu_choice is (1-4)
	if menu_validation == false
		print "Not a valid choice! Please re-enter a valid integer: "
		redo_menu_choice = gets
		menu_choice = redo_menu_choice.to_i # fixed an error here - previously I didn't have the to_i, which seems to have made the comparison in the following boolean a string to int comparison, which was not properly evaluated
	end

	print "THE MENU CHOICE IS : "
	print menu_choice
	print "\n"


	if menu_choice == 1
		cm_360_header()
	elsif menu_choice == 2
		print "You've chosen the Sensitivity equalizer!"
	elsif menu_choice == 3
		print "Here's the FAQ!"
	elsif menu_choice == 4
		Process.exit(0)
	else
		print "Not a valid choice! Please re-enter a valid integer: "
	end
end
