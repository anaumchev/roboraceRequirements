
note
	description: "Environment components"
	author: "Maria Naumcheva"
	date: "$07/04/2021$"
	revision: "$07/04/2021$"

deferred class
	ENVIRONMENT

feature
	obstacles: BAG[OBSTACLE]
		-- Set of detected obstacles on racetrack

	roborace: ROBORACE
		-- Roborace

	racemap: MAP
		-- Racetrack map

end
