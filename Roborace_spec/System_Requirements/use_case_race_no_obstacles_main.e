note
	description: "Summary description for {USE_CASE_RACE_NO_OBSTACLES_MAIN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	USE_CASE_RACE_NO_OBSTACLES_MAIN

inherit

	ABSTRACT_USE_CASE

feature

	race: RACE

	car: RACECAR

	precondition: BOOLEAN
		do
			Result := (not race.is_moving) and race.global_plan_is_calculated and race.green_flag_is_shown and car.is_on_starting_grid
		end

	postcondition: BOOLEAN
		do
			Result := not race.is_moving
		end

	main_flow
		note
			Callers: car_operator
		do
			from
			until
				race.race_is_finished
			loop
				car.calculate_local_path
				car.move
			end
			race.safe_stop
		end

invariant
	car.is_on_racetrack

end
