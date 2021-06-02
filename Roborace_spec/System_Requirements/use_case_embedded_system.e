note
	description: "Summary description for {USE_CASE_EMBEDDED_SYSTEM}."
	author: "Maria Naumcheva"
	date: "$24/05/2021$"
	revision: "$24/05/2021$"

deferred class
	USE_CASE_EMBEDDED_SYSTEM

inherit

	ABSTRACT_USE_CASE

feature

	trigger_holds: BOOLEAN

	main_flow
		do
			from
			invariant
				trigger_holds
			until
				postcondition
			loop
			end
		end

end
