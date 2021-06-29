Note
	description: "Use case 'Move to pit'.Story 2: unsurmountable obstacle on the way to pit"
	author: "Maria Naumcheva"
	date: "$03/06/2021$"
	revision: "$03/06/2021$"
deferred class
	UC1_STORY2

inherit
	ABSTRACT_USE_CASE_STORY

feature

	car: RACECAR

	obstacle: OBSTACLE

	pit_location: LOCATION

	precondition: BOOLEAN
		do
			Result:= car.is_on_racetrack and car.unsurmountable_obstacle_detected
		end

	postcondition: BOOLEAN
		do
			Result:= car.location.close_to (obstacle)
		end

	postcondition_main: BOOLEAN
		do
			Result:= (car.speed = 0)
		end

	flow
		do
			from
				car.calculate_global_path (obstacle.location, car.normal_speed)
			until
				postcondition
			loop
				car.calculate_local_path
				car.move
			end
		end
end


