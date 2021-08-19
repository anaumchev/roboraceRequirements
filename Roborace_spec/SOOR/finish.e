note
	description: "Summary description for {FINISH_CONDITION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

expanded class
	FINISH

inherit
	CAR_IS_NOT_MOVING
		undefine holds end
	RACE_IS_FINISHED
		undefine holds end
feature
	holds (system: RACECAR): BOOLEAN
		do
			Result :=
				Precursor {CAR_IS_NOT_MOVING} (system) and then
				Precursor {RACE_IS_FINISHED} (system)
		end

end
