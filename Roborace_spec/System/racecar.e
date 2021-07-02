note
	description: "Core system class"
	author: "Maria Naumcheva"
	date: "$07/04/2021$"
	revision: "$21/04/2021$"

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
		-- Location of the racecar´s centre of mass

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

	is_on_racetrack: BOOLEAN
		do

		end

	is_on_starting_grid: BOOLEAN

	start_command_is_received: BOOLEAN

	location_passed (l: LOCATION) : BOOLEAN
		do

		end

-- Parameters	
	max_speed: REAL
		-- Speed limit

	normal_speed: REAL
		-- Speed limit when moving not in racing mode

	max_acceleration: REAL
		-- Acceleration limit

	max_steering_angle: REAL
		-- Max possible steering angle

	emergency_deceleration: REAL
		-- Deceleration at the emergency brake (must be < 0)

	normal_deceleration: REAL
		-- Deceleration at regular stop

	timestep: REAL
		-- A timestep for sending the desired speed to the actuators

	speed_error: REAL
		-- Acceptable error margin when setting speed

	angle_error: REAL
		-- Acceptable error margin when setting steering angle

	is_valid_acceleration (old_speed: REAL; new_speed: REAL; timeincrement: REAL) : BOOLEAN
		do

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

	move
		--move along the calculated path and velocity
		do

		end
-- Path planning
	calculate_raceline (racemap: MAP)
		do

		ensure
			-- the first element of the raceline equals to the last (the path is a loop)
			-- At every point the speed is less than the limit
			-- Raceline is within the track boundaries
		end

	calculate_global_path (target : LOCATION; speedlimit: REAL)
		require
			valid_speed: speedlimit <= max_speed
			positive_speed: speedlimit > 0
		do

		ensure
			-- The last point of the path equals to a destionation point
			-- At every point the speed is less than the limit
			-- Raceline is within the track boundaries
		end

	calculate_local_path
		do

		ensure
			-- Global and local paths converge
		end

-- Localization and mapping

	set_location (l: LOCATION)
		-- Update current location
		do
		ensure
			location_set: location = l
		end

	--detect_drivable_space:
		--
	update_speed_limit
		--Update max_speed according to the received value
		deferred
		end

-- Perception
	unsurmountable_obstacle_detected: BOOLEAN
		--The obstacle that does not let follow the glodal trajectory is detected

--Experiment
feature
	is_braking: BOOLEAN
		deferred
		end
	is_accelerating: BOOLEAN
		deferred
		end
	acceleratee (a: REAL)
		require
			is_braking = False
			a /= 0
		deferred
		ensure is_accelerating = True
		end

	brake (b: REAL)
		require
			is_accelerating = False
			b > 0
		deferred
		ensure is_braking = True
		end
invariant
	-- The vehicle is located within the racetrack boundaries
	valid_max_angle: max_steering_angle > 0

end
