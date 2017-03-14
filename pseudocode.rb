# How will you know when the problem is solved? (Identify the big-picture goal)
# How do you want to use the software? (Identify the “interface”)
# What’s the (next-)most trivial possible case? (Identify the next small-picture goal)
# How do we achieve this goal? (Sketch an algorithm using pseudocode)

#pseudocode

1. The problem is solved when the program is tested and meets all criteria.
2. This would be a text input box with a submit button.
3. Create a response if only numbers are entered.
4. See Below

Set a counter to track occurences of "GOODBYE!".

Rule 1: If "GOODBYE!", add one to counter. If couter equals 1, respond "ANYTHING ELSE I CAN HELP WITH?" If counter equals 2, respond "THANK YOU FOR CALLING!" and exit. If not "GOODBYE!" go to Rule 2.

Rule 2: Check if the string is empty. If it is empty, respond with "HELLO?!" and then return to Rule 1. Otherwise, move to Rule 2.

Rule 3: Loop over string and search for lowercase letters. If lowercase letters are included respond with "I AM HAVING A HARD TIME HEARING YOU." and return to Rule 1. If no lowercase letters are found, move on to Rule 3.

Rule 4: Respond "NO, THIS IS NOT A PET STORE." Return to Rule 1.
