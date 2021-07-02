note
	description: "Details of a single racing event."
	author: "Maria Naumcheva"
	date: "$30/06/2021$"
	revision: "$30/06/2021$"

deferred class
	RACE

feature
	speed_limit: REAL

	adjust_speed_limit (v : REAL)
		require
			yellow_flag_shown or green_flag_shown
			v > 0
		deferred
		ensure
			speed_limit = v
		end

	recalculate_global_plan
		require
			obstacle_detected or safety_hazard
		deferred
		ensure
			global_plan_is_calculated
		end

	calculate_local_plan
		require
			global_plan_is_calculated
		deferred
		ensure
			local_plan_is_calculated
		end

	move
		require
			local_plan_is_calculated
		deferred
		ensure
		end

	safe_stop
		require
			race_finished
		deferred
		ensure
			not is_moving
		end

	emergency_stop
		require
			red_flag_shown or safety_hazard
		deferred
		ensure
			not is_moving
		end

	local_plan_is_calculated, global_plan_is_calculated, obstacle_detected, race_finished,
	is_moving, red_flag_shown,yellow_flag_shown, green_flag_shown, safety_hazard : BOOLEAN

invariant
	red_flag_shown implies not (yellow_flag_shown or green_flag_shown)
	yellow_flag_shown implies not (red_flag_shown or green_flag_shown)
	green_flag_shown implies not (yellow_flag_shown or red_flag_shown)
	local_plan_is_calculated implies global_plan_is_calculated

end
