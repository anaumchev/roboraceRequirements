note
	description: "Summary description for {CAR_IS_NOT_MOVING}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

expanded class
	CAR_IS_NOT_MOVING

inherit
	CONDITION [RACECAR]
feature
	holds (system: RACECAR): BOOLEAN
		do
			Result := not system.is_moving
		end

end
