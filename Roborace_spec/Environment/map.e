note
	description: "2D roadmap"
	author: "Maria Naumcheva"
	date: "$07/04/2021$"
	revision: "$07/04/2021$"

deferred class
	MAP
feature
	outbound: SEQUENCE[LOCATION]
		-- Coordinates of the outside line of racetrack

	inbound: SEQUENCE[LOCATION]
		-- Coordinates of the inside line of racetrack
end
