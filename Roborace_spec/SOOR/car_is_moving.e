note
	description: "Summary description for {CAR_IS_MOVING}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

expanded class
	CAR_IS_MOVING

inherit
	CAR_IS_NOT_MOVING
		undefine holds end
feature
	holds (system: RACECAR): BOOLEAN
		do
			Result := not Precursor {CAR_IS_NOT_MOVING} (system)
		end

end
