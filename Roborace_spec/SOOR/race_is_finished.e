note
	description: "Summary description for {RACE_IS_FINISHED}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

expanded class
	RACE_IS_FINISHED

inherit
	CONDITION [RACECAR]
feature
	holds (system: RACECAR): BOOLEAN
		do
			Result := system.race_is_finished
		end

end
