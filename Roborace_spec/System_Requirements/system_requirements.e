note
	description: "Textual form of system requirements"
	author: "Maria Naumcheva"
	date: "$28/04/2021$"
	revision: "$28/04/2021$"

class
	SYSTEM_REQUIREMENTS

feature
	system_rq_001 : STRING
	do
		Result := "The system shall generate 2D and 3D map of a racetrack"
	end

	system_rq_002 : STRING
	do
		Result := "The system shall provide the position and orientation of the vehicle"
	end

	system_rq_003 : STRING
	do
		Result := "The system shall calculate the racing line (path and velocity) for a given track"
	end

	system_rq_004 : STRING
	do
		Result := "The system shall find the fastest overtaking maneuver for the car (local path and velocity)"
	end

	system_rq_005 : STRING
	do
		Result := "The system shall generate the control commands"
	end

	system_rq_006 : STRING
	do
		Result := "The system shall detect and localize obstacles and another vehicles"
	end

	system_rq_007 : STRING
	do
		Result := "The system shall provide object tracking and path prediction"
	end

	system_rq_008 : STRING
	do
		Result := "The system shall perform road segmentation: detect drivable space, road defects"
	end


end
