# cm_converter.rb
# Includes: cm/360 converter functions

def compute_cm_360(dpi, sensitivity)
	max_value_per_360 = 138545.455 # this is a key constant in Blizzard's sensitivity formula, it stands for the maximum value per one 360 rotation
	cm_360_result = max_value_per_360.to_f / sensitivity.to_f / dpi.to_f
	return cm_360_result
end
