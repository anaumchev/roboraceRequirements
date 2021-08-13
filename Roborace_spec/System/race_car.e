note
	description: "System based on inheritance"
	author: "Maria Naumcheva"
	date: "$01/06/2021$"
	revision: "$01/06/2021$"

deferred class
	RACE_CAR


feature
	control_module: CONTROL_MODULE
	percepion_module: PERCEPTION_MODULE
	planning_module: PLANNING_MODULE
	localization_and_mapping_module: LOCALIZATION_AND_MAPPING_MODULE
	
feature
	parameters: VEHICLE_PARAMETERS

-- Vehicle current state
	location: LOCATION
		-- Location of the racecar´s centre of mass

	speed: REAL
		-- Current speed of racecar

	acceleration: REAL
		-- Current acceleration (negative values for deceleration)

	steering_angle: REAL
		-- Current steering angle in rad

	is_on_racetrack: BOOLEAN
		deferred
		end

invariant
	-- The vehicle is located within the racetrack boundaries

end

