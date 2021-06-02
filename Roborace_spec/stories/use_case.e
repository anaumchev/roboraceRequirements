note
	description: "Summary description for {USE_CASE}."
	author: "Alexandr Naumchev"
	date: "$01/06/2021$"
	revision: "$01/06/2021$"

deferred class
	USE_CASE

feature

	stories: COLLECTION [STORY]
		deferred
		end

	execute
		local
			currently_executing: STORY
		do
			from
			until
				false
			loop
				across
					stories as s
				loop
					if s.item.trigger and then s.item.precondition then
						s.item.execution
						currently_executing := s.item
					end
				end
			end
		end

end
