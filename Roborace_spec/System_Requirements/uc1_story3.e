note
	description: "Use case 'Move to pit'.Story 3: Missed pit location"
	author: "Maria Naumcheva"
	date: "$03/06/2021$"
	revision: "$03/06/2021$"

deferred class
	UC1_STORY3

inherit
	ABSTRACT_USE_CASE_STORY

feature

	car: RACECAR

	obstacle: OBSTACLE

	pit_location: LOCATION

	precondition: BOOLEAN
		do
			Result:= car.is_on_racetrack and car.location_passed (pit_location)
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
			car.emergency_brake
		end
end




