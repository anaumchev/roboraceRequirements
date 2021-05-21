note
	description: "Textual form of environment assumptions"
	author: "Maria Naumcheva"
	date: "$28/04/2021$"
	revision: "$28/04/2021$"
	EIS: ""

class
	ENVIRONMENT_ASSUMPTIONS

feature
	EA001 : STRING
	do
		Result := "The localization data is provided during the race in real time"
	end

	EA002 : STRING
	do
		Result := "The track 2-dimentional map is provided before the race"
	end

	EA003 : STRING
	do
		Result := "The robocar and Devbot 2.0 have the same dynamics"
	end

	EA004 : STRING
	do
		Result := "All roborace participants are able to communicate in English"
	end

	EA005 : STRING
	do
		Result := "The measured vehicle speed equals to actual vehicle speed"
	end

	EA006 : STRING
	do
		Result := "The estimated vehicle pose equals to actual vehicle pose with an accuracy 5-10cm"
	end

	EA007 : STRING
	do
		Result := "The influence of weather contitions on car dynamics is not taken into consideration"
	end

	EA008 : STRING
	note
			EIS: "protocol=URI", "src=https://github.com/FormalRequirements/roboraceRequirements/blob/main/Environment.adoc", ""
		do
		Result := "The influence of tyre wear-off on car dynamics is not taken into consideration."
	end

	EA009 : STRING
	do
		Result := "The influence of track surface degradation during the race is not taken into consideration."
	end

	EA010 : STRING
	note
			EIS: "protocol=URI"
		do
		Result := "The racetrack surface is clean and in good conditions"
	end

	EA011 : STRING
	do
		Result := "The racetrack surface is not slippery"
	end


end
