note
	description: "Use case RACE_NO_OBSTACLES_MAIN implementation"
	author: "Maria Naumcheva"
	date: "$02/07/2021$"
	revision: "$02/07/2021$"

deferred class
	USE_CASE_RACE_NO_OBSTACLES_MAIN

inherit

	ABSTRACT_USE_CASE

feature

	mission: MISSION

	car: RACECAR

    trigger: BOOLEAN
        do
            Result := car.start_command_is_received
        end

	precondition: BOOLEAN
		do
			Result := (not car.is_moving) and car.global_plan_is_calculated and car.green_flag_is_shown and car.is_on_starting_grid
		end

	postcondition: BOOLEAN
		do
			Result := not car.is_moving
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
				car.planning_module.calculate_local_plan
				car.control_module.move
			end
			car.control_module.safe_stop
		end

invariant
	car.is_on_racetrack
	car.green_flag_is_shown

end
