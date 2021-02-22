note
	description: "Testing as EShell mimick"
	udemy_section: "Section ## [section-title] - Step ## [step-title]"
	testing: "type/manual"

class
	SANDBOX_TEST_SET

inherit
	TEST_SET_SUPPORT

feature -- Test routines

	basic_expressions
			-- Demonstration of basic expressions.
		do
			print (4)				-- An expression (single operand).	( = 4)
			io.new_line				-- Moves down a line (carriage-return + line-feed)

			print (-4)				-- Same expression, but negative.	( = -4)
			print ("%N")			-- Same as io.new_line

			print (4 + 2)			-- Expression with two operands.	( = 6)
			print ("%N")

			print (4 - 2)			-- Subtraction vs Addition.			( = 2)
			print ("%N")

			print (4 * 2)			-- Multipliction					( = 8)
			print ("%N")

			print (4 / 2)			-- Division							( = 2)
			print ("%N")

			assert ("false", False) -- causes printing above to display in results below.
		end

end


