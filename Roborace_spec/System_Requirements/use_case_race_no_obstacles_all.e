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

	race: RACE

	car: RACECAR

    trigger: BOOLEAN
        do
            Result := car.start_command_is_received
        end

	precondition: BOOLEAN
		do
			Result := (not race.is_moving) and race.global_plan_is_calculated and race.green_flag_is_shown and car.is_on_starting_grid
		end

	postcondition: BOOLEAN
		do
			Result := not race.is_moving and race.race_is_finished
		end

	main_flow
		Note
			Callers: car_operator
		require else
			trigger
		do
			from

			until
				race.race_is_finished
			loop
				car.planning_module.calculate_local_path
				car.move
			end
			race.safe_stop
		end

	alternative_flow1
		--There is an obstacle on a racetrack
		require
			race.is_moving
			race.obstacle_is_detected
		do
			race.recalculate_global_plan
			from
			until
				race.race_is_finished
			loop
				car.planning_module.calculate_local_path
				car.move
			end
			race.safe_stop
		ensure
			postcondition
		end

	alternative_flow2
		--The red flag received during the race
		require
			race.is_moving
			race.red_flag_is_shown
		do
			race.recalculate_global_plan
			race.emergency_stop
		ensure
			not race.is_moving
		end

	alternative_flow3
		--The yellow flag is received during the race
		require
			race.yellow_flag_is_shown
		do
			car.update_speed_limit
			from
			until
				race.race_is_finished
			loop
				car.planning_module.calculate_local_path
				car.move
			end
			race.safe_stop
		ensure
			postcondition
		end

	alternative_flow4
		--The difference between the calculated and real location is more than a given threshold.
		require
			race.there_is_safety_hazard
			race.is_moving
		do
			race.recalculate_global_plan
			race.emergency_stop
		ensure
			not race.is_moving
		end

invariant
	car.is_on_racetrack

end
