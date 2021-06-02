note
	description: "Summary description for {ABSTRACT_ALTERNATIVE_FLOW}."
	author: "Maria Naumcheva"
	date: "$02/06/2021$"
	revision: "$02/06/2021$"

deferred class
	ABSTRACT_ALTERNATIVE_FLOW

feature
	alternative_flow_trigger: BOOLEAN
		deferred
		end

	alternative_flow_postcondition: BOOLEAN

	alternative_flow_precondition: BOOLEAN

	alternative_flow
		require
			alternative_flow_precondition
		do
		ensure
			alternative_flow_postcondition
		end

end
