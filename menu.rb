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


def evaluate_option(menu_choice)
	if menu_choice == 1
		print "You've chosen the cm/360 converter!"
	elsif menu_choice == 2
		print "You've chosen the Sensitivity equalizer!"
	elsif menu_choice == 3
		print "Here's the FAQ!"
	else
		print "Time to exit!"
	end
end
