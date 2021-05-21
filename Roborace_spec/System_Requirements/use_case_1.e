note
	description: "Summary description for {USE_CASE_1}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	USE_CASE_1

feature
	primary_actor: STRING
	do
		Result := "Roborace or Racecar pilot"
	end

	context: STRING
	do
		Result := "Racecar has to obey an instruction"
	end

	precondition_1: STRING
	do
		Result := "Racecar has received an order to move to the pitlane"
	end

	precondition_2: STRING
	do
		Result := "Racecar is on the racetrack"
	end

	trigger: STRING
	do
		Result := "System receives a request from Racecar pilot or from the Roborace team"
	end

	normal_flow: STRING
	do
		Result := "The system calculates the trajectory to the pitlane. The Racecar follows the trajectory. The Racecar stops at the pit"
	end


end
