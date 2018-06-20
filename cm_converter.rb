# cm_converter.rb
# Includes: cm/360 converter functions

def get_user_DPI() # returns the users mouse DPI
	user_dpi = gets
	return user_dpi
end


def get_user_sensitivity()
	user_sens = gets
	return user_sens
end


def compute_cm_360(dpi, sensitivity)
	max_value_per_360 = 138545.455 # this is a key constant in Blizzard's sensitivity formula, it stands for the maximum value per one 360 rotation
	cm_360_result = max_value_per_360.to_f / sensitivity.to_f / dpi.to_f
	return cm_360_result
end


def cm_360_application() # initiates the cm/360 application - including gathering user information and calculating the cm result
	print "Please enter your mouse DPI: "
	user_dpi = get_user_DPI()

	print "Please enter your in-game sensitivity: "
	user_sens = get_user_sensitivity()

	print "Your cm/360 result is: "
	print compute_cm_360(user_dpi, user_sens).round(2)
	print " cm/360"
end