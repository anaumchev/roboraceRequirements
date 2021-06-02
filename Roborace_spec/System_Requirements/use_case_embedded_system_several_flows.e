note
	description: "Summary description for {USE_CASE_EMBEDDED_SYSTEM}."
	author: "Maria Naumcheva"
	date: "$24/05/2021$"
	revision: "$25/05/2021$"

deferred class
	USE_CASE_EMBEDDED_SYSTEM_SEVERAL_FLOWS

inherit

	USE_CASE_EMBEDDED_SYSTEM
--		redefine
--			main_flow
		select
			main_flow
		end

	ABSTRACT_USE_CASE_SEVERAL_FLOWS
		rename
			main_flow as mainflow
		end

feature

	flow_is_main: BOOLEAN

--	main_flow
--		do
--			from
--			invariant
--				trigger_holds
--			until
--				postcondition or alternative_flow_trigger
--			loop
--			end
--			if alternative_flow_trigger then
--				flow_is_main := False
--				alternative_flow
--			end
--		ensure then
--			flow_is_main implies postcondition
--		end

end
