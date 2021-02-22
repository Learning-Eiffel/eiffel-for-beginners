note
	description: "Testing as EShell mimick"
	udemy_section: "Section ## [section-title] - Step ## [step-title]"
	testing: "type/manual"

class
	INTRO_SANDBOX_TEST_SET

inherit
	TEST_SET_SUPPORT

feature -- Test routines

	basic_integer_expressions
			-- Demonstration of basic INTEGER expressions.
		do
				-- All of these are INTEGER operands.
				-- INTEGER numbers are both negative and positive.

			assert ("one_positive_operand", 	  4 = 4)
			assert ("one_negative_operand", 	 -4 = -4)
			assert ("4_plus_2", 			(4 + 2) = 6)
			assert ("4_minus_2", 			(4 - 2) = 2)
			assert ("4_times_2", 			(4 * 2) = 8)
			assert ("4_divided_by_2",		(4 / 2) = 2)
		end

end


