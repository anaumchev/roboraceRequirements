note
	description: "Summary description for {USE_CASE_BUSINESS_SYSTEM_SEVERAL_FLOWS}."
	author: "Maria Naumcheva"
	date: "$25/05/2021$"
	revision: "$25/05/2021$"

deferred class
	USE_CASE_BUSINESS_SYSTEM_SEVERAL_FLOWS

inherit

	USE_CASE_BUSINESS_SYSTEM
		redefine
			main_flow
		select
			main_flow
		end

	ABSTRACT_USE_CASE_SEVERAL_FLOWS
		rename
			main_flow as mainflow
		end

feature
	main_flow
		deferred
		end

end
