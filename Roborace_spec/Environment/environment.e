
note
	description: "Environment components"
	author: "Maria Naumcheva"
	date: "$07/04/2021$"
	revision: "$07/04/2021$"
	EIS: "name=Project Requirement", "protocol=URI", "src=/home/mnaumcheva/Roborace/roboraceRequirements/main.pdf", "tag=requirement", "nameddest=4.1"

deferred class
	ENVIRONMENT

feature
	obstacles: BAG[OBSTACLE]
		-- Set of detected obstacles on racetrack

	roborace: ROBORACE
		-- Roborace

	racemap: MAP
		-- Racetrack map

	racerules: RULES
		-- Current race rules

end
