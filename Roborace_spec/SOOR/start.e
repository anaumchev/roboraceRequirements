note
	description: "Summary description for {START_PRECONDITION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

expanded class
	START

inherit
	START_TRIGGER
		undefine holds end
	CAR_IS_NOT_MOVING
		undefine holds end
	GLOBAL_PLAN_IS_CALCULATED
		undefine holds end
feature
	holds (system: RACECAR): BOOLEAN
		do
			Result :=
				Precursor {START_TRIGGER} (system) and then
				Precursor {CAR_IS_NOT_MOVING} (system) and then
				Precursor {GLOBAL_PLAN_IS_CALCULATED} (system) and then
				system.green_flag_is_shown and then
				system.is_on_starting_grid
		end

end
