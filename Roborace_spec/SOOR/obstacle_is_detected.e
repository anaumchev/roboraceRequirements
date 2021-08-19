note
	description: "Summary description for {OBSTACLE_IS_DETECTED}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

expanded class
	OBSTACLE_IS_DETECTED

inherit
	CONDITION [RACECAR]
feature
	holds (system: RACECAR): BOOLEAN
		do
			Result := system.obstacle_is_detected
		end

end
