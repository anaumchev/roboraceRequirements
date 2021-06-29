
note
	description: "Environment components"
	author: "Maria Naumcheva"
	date: "$07/04/2021$"
	revision: "$16/06/2021$"
	EIS: "name=Project Requirement", "protocol=URI", "src=/home/mnaumcheva/Roborace/roboraceRequirements/main.pdf", "tag=requirement", "nameddest=4.1"

deferred class
	ENVIRONMENT

feature
	obstacles: BAG[OBSTACLE]
		--Set of detected obstacles on racetrack

	roborace: ROBORACE
		--Race control unit

	race: RACE
		--Current race details

	sensors: SENSORS
		--Set of sensos insalled of the vehicle

end
