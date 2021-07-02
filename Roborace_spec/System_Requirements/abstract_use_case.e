note
	description: "Abstract speification of a use case"
	author: "Maria Naumcheva"
	date: "$24/05/2021$"
	revision: "$27/05/2021$"

deferred class
	ABSTRACT_USE_CASE

feature

	precondition: BOOLEAN
		deferred
		end

	postcondition_main: BOOLEAN
		deferred
		end

	postcondition: BOOLEAN
		deferred
		end

	primary_actor: PRIMARY_ACTOR


feature {PRIMARY_ACTOR}

	main_flow
		note
			Callers: racecar_operator
		require
			precondition
		deferred
		ensure
			postcondition

		end

invariant
	--A trigger that must hold for the entire use case
end
