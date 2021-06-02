note
	description: "Summary description for {STORY}."
	author: "Alexandr Naumchev"
	date: "$01/06/2021$"
	revision: "$01/06/2021$"

deferred class
	STORY
feature
	trigger: BOOLEAN
		deferred
		end

	precondition: BOOLEAN
		deferred
		end

	execution
		require
			precondition
		deferred
		end
end
