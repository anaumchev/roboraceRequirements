note
	description: "Summary description for {RACECAR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	RACECAR

feature
	environment: ENVIRONMENT
	location: LOCATION
	speed: REAL
	accelerate (acceleration : REAL)
		do

		end
	steer (steering_angle : REAL)			-- in rad
		do

		end
	brake (deceleration : REAL)				-- can be speed in m/s
		do

		end
	global_trajectory: SEQUENCE[(LOCATION, REAL)]
	local_trajectory: SEQUENCE[LOCATION, REAL]
	calculate_global_path
		do

		end

	calculate_local_path
		do

		end

end
