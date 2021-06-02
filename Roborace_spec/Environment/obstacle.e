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

	location: LOCATION
		-- Obstacle location

	size: TUPLE[REAL, REAL, REAL]
		-- Obstacle size (bounding box)
		
end
