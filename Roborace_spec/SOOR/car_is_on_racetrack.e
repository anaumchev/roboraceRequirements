note
	description: "Summary description for {CAR_IS_ON_RACETRACK}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

expanded class
	CAR_IS_ON_RACETRACK

inherit
	CONDITION [RACECAR]
feature
	holds (system: RACECAR): BOOLEAN
		do
			Result := system.is_on_racetrack
		end

end
