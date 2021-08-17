note
	description: "Specification rivers for PLANNING_MODULE."
	author: "Maria Naumcheva"
	date: "$17/08/2021$"
	revision: "$17/08/2021$"

class
	SPECIFICATION_PLANNING_MODULE

feature
	perform_safe_stop (c: RACECAR)
		require
			c.safe_stop_request_received
			c.global_plan_is_calculated
		local
			old_speed: REAL
		do
			--car
			from

			until
				c.speed = 0

			loop
			--	c.planning_module.

			end

		ensure
			c.speed = 0
			c.is_on_racetrack
		end
end
