note
	description: "Lidar sensor"
	author: "Maria Naumcheva"
	date: "$07/04/2021$"
	revision: "$16/06/2021$"

deferred class
	LIDAR

inherit
	SENSOR

feature
	point_cloud: ARRAY2 [LOCATION]
		-- m by n matrix of detected points in lidar coordinate system

	distance: ARRAY2 [REAL]
		-- m by n matrix of distances to object points

	orientation: ARRAY [ORIENTATION]
		-- Lidar orientation in the racecar coordinate system	

end
