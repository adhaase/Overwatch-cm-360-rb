# sens_equalizer.rb
# Includes: sensitivity equalizer functions

require_relative 'cm_converter.rb' # for the mouse DPI function

def get_user_cm_360_result()
	user_cm_result = gets
	return user_cm_result
end


def compute_sensitivity(dpi, cm_360_result)
	max_value_per_360 = 138545.455 # this is a key constant in Blizzard's sensitivity formula, it stands for the maximum value per one 360 rotation
	sens_result = (max_value_per_360.to_f) / (cm_360_result.to_f * dpi.to_f)
	return sens_result
end


def sens_equalizer_application() # initiates the sensitivity equalizer application - including gathering user information and calculating the OW sensitivity result
	print "Please enter your mouse DPI: "
	user_dpi = get_user_DPI()

	print "Please enter your cm/360 result: "
	cm_360_result = get_user_cm_360_result()

	print "Your sensitivity result is: "
	print compute_sensitivity(user_dpi, cm_360_result).round(2)
end