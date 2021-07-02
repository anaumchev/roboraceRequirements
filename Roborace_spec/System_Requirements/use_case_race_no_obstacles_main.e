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

	patron: PATRON

	book:

	precondition: BOOLEAN
		do
			Result:= (not race.is_moving) and race.global_plan_is_calculated and race.green_flag_shown and car.is_on_starting_grid
		end

	postcondition
		do
			Result:= not race.is_moving
		end

	main_flow
		note
			Callers: car operator
		do
			
		end

invariant
	--A trigger that must hold for the entire use case

end
