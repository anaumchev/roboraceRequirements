note
	description: "Summary description for {UC1_VAR2}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	UC1_VAR2

inherit
	ABSTRACT_USE_CASE_2

create
	make_use_case

feature
	--story1: UC1_STORY1

	make_use_case
		do
		create use_case_stories.make (3)
		--use_case_stories.extend(story1.make_new(RACECAR.make, LOCATION.make_new (0, 0), PRIMARY_ACTOR.make))
		--use_case_stories.extend(UC1_STORY2.make)
		--use_case_stories.extend(UC1_STORY3.make)
		end
		--:= COLLECTION[UC1_STORY1, UC1_STORY2, UC1_STORY3]
end
