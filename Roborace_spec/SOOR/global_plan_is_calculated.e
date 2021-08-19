note
	description: "Summary description for {GLOBAL_PLAN_IS_CALCULATED}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

expanded class
	GLOBAL_PLAN_IS_CALCULATED

inherit
	CONDITION [RACECAR]
feature
	holds (system: RACECAR): BOOLEAN
		do
			Result := system.global_plan_is_calculated
		end

end
