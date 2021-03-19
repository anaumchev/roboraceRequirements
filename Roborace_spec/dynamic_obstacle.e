note
	description: "Summary description for {DYNAMIC_OBSTACLE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	DYNAMIC_OBSTACLE

inherit
	OBSTACLE

feature
	speed: REAL
	path_history: SEQUENCE[LOCATION]
	path_prediction: SEQUENCE[LOCATION]
	update_path_history
		do
			
		end
	update_path_prediction
		do

		end
end
