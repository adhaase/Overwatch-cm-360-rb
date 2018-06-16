# A quick single file implementation of my Overwatch conversion program - primarily for learning purposes of Ruby
# The end version will be split up appropriately into multiple files/functions, instead of being condensed into one file. 

puts "Overwatch cm/360 conversion application - Ruby version."
puts "\n" #puts adds a newline character (apart from the "\n")
puts "This program will calculate your cm/360 by first asking for your mouse DPI and in-game sensitivity!\n"

print "Please enter your mouse DPI: " # print does not include the newline char
dpi = gets

print "Please enter your Overwatch in-game sensitivity: "
sensitivity = gets

def compute_cm_360(dpi, sensitivity)
	max_value_per_360 = 138545.455 # this is a key constant in Blizzard's sensitivity formula, it stands for the maximum value per one 360 rotation
	cm_360_result = max_value_per_360.to_f / sensitivity.to_f / dpi.to_f
	return cm_360_result
end

cm_360_output = compute_cm_360(dpi, sensitivity)
puts "Your cm/360 result is: " + cm_360_output
puts cm_360_output