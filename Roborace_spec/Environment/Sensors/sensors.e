note
	description: "Racecar sensors"
	author: "Maria Naumcheva"
	date: "$07/04/2021$"
	revision: "$07/04/2021$"

deferred class
	SENSORS

feature

-- The sensors are to be updated according to the racecar specification
	lidar1: LIDAR
	lidar2: LIDAR
	radar1: RADAR
	gnss: GNSS
	camera: CAMERA
	sonar1: SONAR
	odometer: ODOMETER

end
