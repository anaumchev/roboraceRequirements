note
	description: "Subsystem responsible for local and global path planning"
	author: "Maria Naumcheva"
	date: "$01/06/2021$"
	revision: "$01/06/2021$"

deferred class
	PLANNING_MODULE

feature
	calculate_race_trajectory (circuit_map: LIST[TUPLE[LOCATION, LOCATION]];
								vehicle_param: VEHICLE_PARAMETERS; strategy: INTEGER):
								TUPLE [LOCATION, DOUBLE]
		-- Calculate optimal racing line for circuit
		-- Input: circuit map, Parameters, Optimization strategy
		-- Output: Raceline, Velocity profile
		require
			racetrack_is_a_circuit: ;
			racetrack_wide_enough: ;
		deferred
		ensure
			circuit_trajectory: ;
			velocity_limit_obeyed: ;

		end

	calculate_global_path
		-- Calculate global path from current location to given point
		-- Input: Road map, Parameters, Optimization strategy
		-- Output: Raceline, Velocity profile
		deferred
		end

	calculate_local_path
		-- Calculate local path from current location to converge to global path
		-- Input: Vehicle pose; Obstacles location, velocity and path prediction (from Perception module)
		-- Input: Raceline, Global Velocity profile (from Global Path planner)
		-- Input: External events
		-- Output: Local trajectory, velocity profile

		deferred
		end

end
