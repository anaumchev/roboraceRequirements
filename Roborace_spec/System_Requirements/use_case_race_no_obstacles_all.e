note
	description: "Use case RACE_NO_OBSTACLES_ALL implementation"
	author: "Maria Naumcheva"
	date: "$02/07/2021$"
	revision: "$02/07/2021$"

deferred class
	USE_CASE_RACE_NO_OBSTACLES_ALL

inherit

	ABSTRACT_USE_CASE

feature

	car: RACECAR

    trigger: BOOLEAN
        do
            Result := car.start_command_is_received
        end

	precondition: BOOLEAN
		do
			Result := not car.is_moving
					  and car.global_plan_is_calculated
					  and car.green_flag_is_shown
					  and car.is_on_starting_grid
		end

	postcondition: BOOLEAN
		do
			Result := not car.is_moving and car.race_is_finished
		end

	main_flow
		Note
			Callers: car_operator
		require else
			trigger
		do
			from

			until
				car.race_is_finished
			loop
				car.planning_module.calculate_local_path
				car.control_module.move
			end
			car.control_module.safe_stop
		end

	alternative_flow1
		--There is an obstacle on a racetrack
		require
			car.is_moving
			car.obstacle_is_detected
		do
			car.planning_module.recalculate_global_plan
			from
			until
				car.race_is_finished
			loop
				car.planning_module.calculate_local_path
				car.control_module.move
			end
			car.control_module.safe_stop
		ensure
			postcondition
		end

	alternative_flow2
		--The red flag received during the race
		require
			car.is_moving
			car.red_flag_is_shown
		do
			car.planning_module.recalculate_global_plan
			car.control_module.emergency_stop
		ensure
			not car.is_moving
		end

	alternative_flow3 (v: REAL)
		--The yellow flag is received during the race
		require
			car.yellow_flag_is_shown (v)
		do
			car.planning_module.adjust_speed_limit (v)
			from
			until
				car.race_is_finished
			loop
				car.planning_module.calculate_local_path
				car.control_module.move
			end
			car.control_module.safe_stop
		ensure
			postcondition
		end

	alternative_flow4
		--The difference between the calculated and real location is more than a given threshold.
		require
			car.there_is_safety_hazard
			car.is_moving
		do
			car.planning_module.recalculate_global_plan
			car.control_module.emergency_stop
		ensure
			not car.is_moving
		end

invariant
	car.is_on_racetrack

end
