note
	description: "Roborace_spec root class"
	author: "Maria Naumcheva"
	date: "$07/04/2021$"
	revision: "$07/04/2021$"

class
	APPLICATION

inherit
	ARGUMENTS_32

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		do
			print (({NORMAL_FLOW}).default)
			io.new_line
			print (({CAR_ALWAYS_STAYS_ON_TRACK}).default)
			io.new_line
--			print ("Hello")
		end

end
