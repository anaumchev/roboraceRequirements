
note
	description: "Summary description for {ENVIRONMENT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	ENVIRONMENT

feature
	obstacles: BAG[OBSTACLE]
	roborace: ROBORACE
	racetrack: RACETRACK
	lidar1: LIDAR
	radar1: RADAR
	gnss: GNSS
	camera: CAMERA
	sonar1: SONAR
	odometer: ODOMETER
end
