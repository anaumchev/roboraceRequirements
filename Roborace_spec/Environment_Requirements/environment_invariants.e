note
	description: "Textual form of environment invariants"
	author: "Maria Naumcheva"
	date: "$28/04/2021$"
	revision: "$28/04/2021$"

class
	ENVIRONMENT_INVARIANTS

feature
	ei001 : STRING
	do
		Result := "In a normal mode the vehicles move within the racetrack limits."
	end

	ei002 : STRING
	do
		Result := "In a normal mode the vehicles move in the racing direction"
	end


end
