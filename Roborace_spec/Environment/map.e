note
	description: "2D roadmap"
	author: "Maria Naumcheva"
	date: "$07/04/2021$"
	revision: "$15/06/2021$"

deferred class
	MAP

feature

	track_borders: SEQUENCE [TUPLE [LOCATION, LOCATION]]
			-- Coordinates of the bounding lines of racetrack

end
