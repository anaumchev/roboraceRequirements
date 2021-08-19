note
	description: "Summary description for {RACECAR_REQUIREMENT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	RACECAR_REGULAR_REQUIREMENT

inherit
	REQUIREMENT [RACECAR]
feature
	init (system: RACECAR)
		do
		end

	main (system: RACECAR)
		do
			system.planning_module.calculate_local_plan
			system.control_module.move
			if system.race_is_finished then
				system.control_module.safe_stop
			end
		end

end
