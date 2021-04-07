note
	description: "Lidar sensor"
	author: "Maria Naumcheva"
	date: "$07/04/2021$"
	revision: "$07/04/2021$"

deferred class
	LIDAR

feature
	point_cloud: ARRAY2 [LOCATION]
		-- m by n matrix of detected points in lidar coordinate system

	distance: ARRAY2 [REAL]
		-- m by n matrix of distances to object points

	location: LOCATION
		-- Lidar location in the world coordinate system

	orientation: ARRAY [ORIENTATION]
		-- Lidar orientation in the world coordinate system	

end
