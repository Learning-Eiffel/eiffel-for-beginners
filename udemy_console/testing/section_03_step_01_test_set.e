note
	description: "Learning by Testing"
	udemy_section: "Section 03 Intro to Eiffel Expression - Step 01 Learning by Testing"

class
	SECTION_03_STEP_01_TEST_SET

inherit
	TEST_SET_SUPPORT

feature -- Test routines

	what_are_assertions_test
			-- A demonstration of using test assertions.
		note
			definition: "Assertion = Stating what must hold or be True."
		do
			assert ("one_plus_one_is_two", 1 + 1 = 2)
				--		▲ Tag				▲ Value of expression that must evaluate to True
				--
				-- The `assert' can only PASS or FAIL. A failure happens when
				--	the "Value" evaluates to False. In this case, a failure
				--	message will appear in the Outputs context-tool (below)

--			assert ("one_plus_one_is_two", 1 + 1 = 3)
				-- EXAMPLE: what_are_assertions (INTRO_SANDBOX_TEST_SET): FAIL (one_plus_one_is_two)
				-- 	If the `assert' above is uncommented, then it will produce the
				-- 	failure-message seen in the EXAMPLE above.

				-- Here are more examples of more complex but useful assertions.

			assert_equal ("one_plus_one_is_two", 	2, 			1 + 1)
				--			▲ Tag					▲ Expected	▲ Actual	Assertion is True if
				--									  Value		  Value		 Expected = Actual

--			assert_equal ("true_is_true", 	3, 			1 + 1)
		end

note
	narrative: "[
		The most basic thing a computer can do is compute, or evaluate an expression. 
		And what is an expression?

		Most likely, you have been working with expressions since you were very young.
		A simple expression is something like, 1 + 1.

		As people, we have learnt to evaluate this expression by saying something like,
		1 + 1 = 2. Eiffel does the same thing.

		Also, as people, we can use the expression in a question. We can ask, is 1 + 1
		equal to 2? The answer is, yes. We can also say that our assertion is true
		if the expression equals 2. When we say it this way, then we are asking if
		the actual result is the same as our expected result.

		In this way, we can use assertions to know if something is true or false.
		If we assert that 1 + 1 equals 2, then we can test this assertion in Eiffel.

		In line #18, we are using Eiffel to assert this very thing. We are using a
		function called assert to test if one plus one evaluates, or computes a result of precisely two.

		In this example, we first quickly compile this code and then run the test,
		which has our assertion code. If the expression equals two, then our test passes.

		If, for example, we change the expected value from two to three, compile,
		and then re-run our test, then the assertion fails. However, the failure
		message is not as useful as it could be, for this kind of expression.

		In this case, we really want to compare what we expected, to what Eiffel
		actually computed as a Result. To make our assertion clearer, we can use
		a different assertion function called assert-equal.

		In the assert-equal function, we still have the tag, which states our
		expectation in plain English. However, we also now have a pair of values.
		The first value is what we expect and the second is the expression that
		will be computed or evaluated.

		The Result of the expression will then be compared to the expected value.
		If they match, then the assertion passes, otherwise it fails and the
		failure message with the tag appears in the Output context tool.

		And now you the basics of what an expression is and how to test it in
		Eiffel. In the next short video, we will have fun with various types
		of expressions with simple numbers so you can see how they work beyond
		just one plus one!

		Please feel free to have fun and play with this code as much as you like.
		]"

end


