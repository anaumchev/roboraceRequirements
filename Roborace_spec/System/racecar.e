note
	description: "Core system class"
	author: "Maria Naumcheva"
	date: "$07/04/2021$"
	revision: "$07/04/2021$"

deferred class
	RACECAR

feature

-- Environment
	environment: ENVIRONMENT
		-- Racecar environment components

	sensors: SENSORS
		-- Racecar sensors

-- Vehicle current state
	location: LOCATION
		-- Location of the racecar�s centre of mass

	speed: REAL
		-- Current speed of racecar

	acceleration: REAL
		-- Current acceleration (negative values for deceleration)

	steering_angle: REAL
		-- Current steering angle in rad

	global_trajectory: SEQUENCE[TUPLE[LOCATION, REAL]]
		-- Racecar global trajectory

	local_trajectory: SEQUENCE[TUPLE[LOCATION, REAL]]
		-- Racecar local trajectory

-- Parameters	
	max_speed: REAL
		-- Speed limit

	max_acceleration: REAL
		-- Acceleration limit

	max_steering_angle: REAL
		-- Max possible steering angle

	emergency_deceleration: REAL
		-- Deceleration at the emergency brake (must be < 0)

	normal_deceleration: REAL
		-- Deceleration at regular stop

	timestep: REAL
		--

	speed_error: REAL
		-- Acceptable error margin when setting speed

	angle_error: REAL
		-- Acceptable error margin when setting steering angle

	set_location (l: LOCATION)
		-- Update current location
		do
		ensure
			location_set: location = l
		end

-- Vehicle control
	accelerate (v : REAL)
		-- Send desired speed command to the actuators
		require
			valid_acceleration: (v - speed)/timestep <= max_acceleration
			valid_deceleration: (v - speed)/timestep >= emergency_deceleration
		do
		ensure
			speed_set: (v - speed) <= speed_error
		end

	steer (angle : REAL)
		-- Send desired steering command to the actuators
		require
			valid_angle: angle.abs <= max_steering_angle
		do
		ensure
			angle_set: (steering_angle - angle) <= angle_error
		end

	emergency_brake
		-- Perform emergency stop				
		require
			not_stopped: speed > 0
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

invariant
	-- The vehicle is located within the racetrack boundaries

end
