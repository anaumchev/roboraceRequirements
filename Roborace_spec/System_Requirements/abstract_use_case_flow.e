note
	description: "Summary description for {ABSTRACT_USE_CASE_FLOW}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	ABSTRACT_USE_CASE_FLOW

feature

	precondition: BOOLEAN
		deferred
		end

	postcondition: BOOLEAN
		deferred
		end

feature

	flow
		require
			precondition
		deferred
		ensure
			postcondition

		end

invariant
	--
end
