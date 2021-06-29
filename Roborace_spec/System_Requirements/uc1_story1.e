note
	description: "Use case 'Move to pit'.Story 1: go to pit without events"
	author: "Maria Naumcheva"
	date: "$02/06/2021$"
	revision: "$02/06/2021$"

class
	UC1_STORY1

inherit
	ABSTRACT_USE_CASE_STORY

create
	make_new
feature
	make_new (c: RACECAR; pit_loc: LOCATION; actor:PRIMARY_ACTOR)
		do
			car := c
			pit_location := pit_loc
			primary_actor := actor
		end
	car: RACECAR

	pit_location: LOCATION

	precondition: BOOLEAN
		do
			Result:= car.is_on_racetrack
		end

	postcondition: BOOLEAN
		do
			Result:= car.location.equals (pit_location)
		end

	postcondition_main: BOOLEAN
		do
			Result:= (car.speed = 0)
		end

	flow
		do
			from
				car.calculate_global_path (pit_location, car.normal_speed)
			until
				postcondition
			loop
				car.calculate_local_path
				car.move
			end
		end
end
