note
	description: "Rules of the race"
	author: "Maria Naumcheva"
	date: "$28/04/2021$"
	revision: "$28/04/2021$"

deferred class
	RULES

feature
	num_laps: INTEGER
		--Number of laps in one attempt

	num_attempts: INTEGER
		--Number of attemps

	timelimit: INTEGER
		--Time limit for the raing session (minutes)

	bonustime: INTEGER
		--Time reward for collecting a bonus (seconds)

	penalty_time_static: INTEGER
		--Penalty time for hitting a static obstacle

	penalty_time_moving: INTEGER
		--Penalty time for hittig a moving obstacle

invariant
end
