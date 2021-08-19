note
	description: "Summary description for {RACECAR_EMERGENCY_REQUIREMENT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	RACECAR_EMERGENCY_REQUIREMENT

inherit
	REQUIREMENT [RACECAR]
feature
	init (system: RACECAR)
		do
		end

	main (system: RACECAR)
		do
			system.planning_module.recalculate_global_plan
			system.control_module.emergency_stop
		end

end
