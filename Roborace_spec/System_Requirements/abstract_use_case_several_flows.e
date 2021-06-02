note
	description: "Summary description for {ABSTRACT_USE_CASE_SEVERAL_FLOWS}."
	author: "Maria Naumcheva"
	date: "$24/05/2021$"
	revision: "$24/05/2021$"

deferred class
	ABSTRACT_USE_CASE_SEVERAL_FLOWS

inherit

	ABSTRACT_USE_CASE

feature

	flows: COLLECTION [ABSTRACT_ALTERNATIVE_FLOW]

	alternative_flow_triggers: INTEGER
		do
			Result := 0
			across
				flows as s
			loop
				if s.item.alternative_flow_trigger = True then
					Result := Result + 1
				end
			end
		end

	main_flow
		do
			from
			until
				postcondition or alternative_flow_triggers > 0
			loop
					--Steps of the main flow
			end
			across
				flows as f
			loop
				if f.item.alternative_flow_trigger = True then
					f.item.alternative_flow
				end
			end
		ensure then
			car_in_pit: alternative_flow_triggers = 0 implies postcondition_main
			global_postcondition: postcondition
		end

end
