note
	description: "Camera sensor"
	author: "Maria Naumcheva"
	date: "$07/04/2021$"
	revision: "$07/04/2021$"

deferred class
	CAMERA

feature
-- Properties
	frequency: INTEGER
		-- Camera frame rate (frames per second)

-- Output
	image: ARRAY2 [RGB]
		-- m by n matrix of RGB values

	labels: ARRAY2 [INTEGER]
		-- Label identifier for each pixel in the image

	location: LOCATION
		-- Camera location in the world coordinate system	

	orientation: ARRAY [ORIENTATION]
		-- Lidar orientation in the world coordinate system	
		
end
