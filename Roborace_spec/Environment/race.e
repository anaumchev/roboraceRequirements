note
	description: "Details of a single racing event."
	author: "Maria Naumcheva"
	date: "$15/06/2021$"
	revision: "$15/06/2021$"

deferred class
	RACE

feature

	racetrack: RACETRACK
		--racetrack of the race

	rules: RULES
		--race rules

	starting_position: INTEGER
		--starting grid position

end
