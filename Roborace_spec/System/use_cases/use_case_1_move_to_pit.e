note
	description: "Summary description for {USE_CASE_1_MOVE_TO_PIT}."
	author: "Maria Naumcheva"
	date: "$21/04/2021$"
	revision: "$21/04/2021$"

deferred class
	USE_CASE_1_MOVE_TO_PIT

feature

	car: RACECAR

	pit_location: LOCATION

	distance_error: REAL

	flow: STRING

	move_to_pit_trigger_holds: BOOLEAN

	obstacle: OBSTACLE

	alernative_flow_trigger: NATURAL

	main_flow
		require
				--?? TRIGGER request_received:	; 					;
			car_on_racetrack: car.is_on_racetrack
		do
			from
				car.calculate_global_path (pit_location, car.normal_speed)
			invariant
				move_to_pit_trigger_holds
			until
				(car.location.equals (pit_location) and car.speed = 0) or alernative_flow_trigger > 0
			loop
					--check the system architecture (synchronous/asyncronous)
				car.calculate_local_path
				car.move
				if car.unsurmountable_obstacle_detected then
					alernative_flow_trigger := 1
				elseif car.location_passed (pit_location) then
					alernative_flow_trigger := 2
				end
			end
			if alernative_flow_trigger = 1 then
				alternative_flow1
			elseif alernative_flow_trigger = 2 then
				alternative_flow2
			end
		ensure
			car_in_pit: flow = "main" implies car.location.equals (pit_location)
			car_stopped: car.speed = 0
		end

	alternative_flow1
			--There is unsurmountable obstacle on the way to pit
		require
			car_on_racetrack: car.is_on_racetrack
			car.unsurmountable_obstacle_detected
		do
			car.calculate_global_path (obstacle.location, car.normal_speed)
			from
			until
				car.location.close_to (obstacle) and car.speed = 0
			loop
				car.calculate_local_path
				car.move
			end
		ensure
			car_in_front_of_obstacle: car.location.close_to (obstacle)
			car_stopped: car.speed = 0
		end

	alternative_flow2
		require
			car.location_passed (pit_location)
		do
			car.emergency_brake
		ensure
			car_stopped: car.speed = 0
		end

end
