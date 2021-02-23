note
	description: "Learning by Testing"
	udemy_section: "Section 03 Intro to Eiffel Expression - Step 01 Learning by Testing"

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

			print (4)	-- the following assertion complicates this simple call to print.
			assert ("one_positive_operand", 	  4 = 4)
			assert ("one_negative_operand", 	 -4 = -4)
			assert ("4_plus_2", 			(4 + 2) = 6)
			assert ("4_minus_2", 			(4 - 2) = 2)
			assert ("4_times_2", 			(4 * 2) = 8)
			assert ("4_divided_by_2",		(4 / 2) = 2)
		end

	basic_real_or_floating_point_number_expressions
			-- Demonstration of basic REAL expressions with INTEGERs.
		do
			assert ("5_divided_by_2",			(5 / 2) = 2.5)
			assert ("5_0_divided_by_2",		  (5.0 / 2) = 2.5)
			assert ("5_divided_by_2_0",		  (5 / 2.0) = 2.5)
			assert ("5_0_divided_by_2_0",	(5.0 / 2.0) = 2.5)
		end

	modulus_and_remainder_expressions
			-- Demonstration of modulus and remainders.
		note
			definition: "[
				The modulo (or "modulus" or "mod") is the remainder after dividing 
				one number by another.
				
				Example: 100 mod 9 equals 1. Because 100/9 = 11 with a remainder of 1. 
				Another example: 14 mod 12 equals 2. Because 14/12 = 1 with a remainder of 2.
				]"
		do
			assert ("5_modulus_2", 			   (5 // 2) = 2)	-- Modulo
			assert ("5_div_2_remainder_1", 	   (5 \\ 2) = 1)	-- Vs remainder

			assert ("38_mod_12",			 (38 // 12) = 3)	-- Modulo
			assert ("38_div_12_rem_2",		 (38 \\ 12) = 2)	-- Vs remainder

			assert ("100_mod_9",			 (100 // 9) = 11)	-- Modulo
			assert ("100_div_9_rem_1",		 (100 \\ 9) = 1)	-- Vs remainder

			assert ("14_mod_12",			 (14 // 12) = 1)	-- Modulo
			assert ("14_div_12_rem_2",		 (14 \\ 12) = 2)	-- Vs remainder
		end

	section_puzzles
			-- Complete the puzzles below.
		note
			what_to_do: "[
				In the examples below, we use the `assert_equal' function to "test" 
				if the "expected value" (left) matches the "actual value" (right).
				
				Your challenge is to makes the expected value equal the actual by:
				
				(A) Change the actual value expression until it produces the correct Result.
				(B) Change the expected value until it matches the correct actual Result.
				(C) Change both until they are the correct expected and actual Result.
				]"
			demonstration: "[
				assert_equal ("10_degrees_C_to_F", 50.0, (10 * (9 / 5)) + 32)
				]"
		do
			assert_equal ("minutes_in_day", 1440, 			24)
				--			▲ Tag			 ▲ Expected		▲ Actual is incomplete expression

			assert_equal ("seconds_in_day", 86400, 24)						-- FAILS: finish_me

			assert_equal ("20_degrees_C_to_F", 0.0, (20 * (9 / 5)) + 32)	-- FAILS: correct me
			assert_equal ("25_degrees_C_to_F", 68.0, 0.0)					-- FAILS: finish_me
			assert_equal ("30_degrees_C_to_F", 0.0, (0 * (9 / 5)) + 32)		-- FAILS: correct me
		end

end


