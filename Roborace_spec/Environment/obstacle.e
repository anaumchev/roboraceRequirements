note
	description: "Obstacle on a racetrack"
	author: "Maria Naumcheva"
	date: "$07/04/2021$"
	revision: "$07/04/2021$"

deferred class
	OBSTACLE

feature
	type: STRING
		-- Obstacle type

	location: BAG [LOCATION]
		-- Obstacle location
end
