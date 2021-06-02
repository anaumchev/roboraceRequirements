note
	description: "Summary description for {ABSTRACT_USE_CASE_STORY}."
	author: "Maria Naumcheva"
	date: "$02/06/2021$"
	revision: "$02/06/2021$"

deferred class
	ABSTRACT_USE_CASE_STORY
feature

	precondition: BOOLEAN
		deferred
		end

	postcondition_main: BOOLEAN
		--True for all use cae stories of the use case
		deferred
		end

	postcondition: BOOLEAN
		--True for this particular use case story
		deferred
		end

	primary_actor: PRIMARY_ACTOR

	flow_trigger: BOOLEAN


feature

	flow
		note
			Callers: should_be_there
		require
			precondition
		deferred
		ensure
			postcondition
			postcondition_main
		end

invariant
	--A trigger that must hold for the entire use case
end
