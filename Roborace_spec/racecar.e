note
	description: "Summary description for {RACECAR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	RACECAR

feature
	environment: ENVIRONMENT

-- Vehicle current state
	location: LOCATION
	speed: REAL
	acceleration: REAL
	global_trajectory: SEQUENCE[TUPLE[LOCATION, REAL]]
	local_trajectory: SEQUENCE[TUPLE[LOCATION, REAL]]

-- Parameters	
	max_speed: REAL
	max_acceleration: REAL
	max_steering_angle: REAL
	emergency_deceleration: REAL
	normal_deceleration: REAL

	display_speed: REAL
		do
		ensure
			Result = speed
		end
	set_location (l: LOCATION)
		do
		ensure
			location_set: location = l
		end

-- Vehicle control
	accelerate (a : REAL)
		require
			valid_acceleration: a <= max_acceleration
			positive_acceleration: a > 0
		do
		ensure

		end
	steer (steering_angle : REAL)			-- in rad
		require
			valid_angle: steering_angle.abs() <= max_steering_angle
		do

		end
	brake (deceleration : REAL)				-- can be speed in m/s
		require
			not_stopped: speed > 0
			valid_deceleration: deceleration >= emergency_deceleration
			negative_deceleration: deceleration < 0
		do

		end

-- Path planning
	calculate_global_path
		do


		ensure
			-- the first element of the global path equals to the last (the path is a loop)
		end

	calculate_local_path
		do

		ensure
			-- Global and local paths converge
		end

-- Perception
end
