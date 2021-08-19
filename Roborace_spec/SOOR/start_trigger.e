note
	description: "Summary description for {START_TRIGGER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

expanded class
	START_TRIGGER

inherit
	CONDITION [RACECAR]
feature
	holds (system: RACECAR): BOOLEAN
		do
			Result := system.start_command_is_received
		end

end
