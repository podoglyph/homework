#Bad Connection Homework

#Write a program which can imitate a Customer Service Representative whose phone connection is bad with these rules:

# If you don’t input anything (just hit enter) they respond with HELLO?!
# If you ask a question with any lower-case letters, they respond with I AM HAVING A HARD TIME HEARING YOU.
# If you ask a question in all upper-case letters, they respond with NO, THIS IS NOT A PET STORE
# The first time you say GOODBYE! they say ANYTHING ELSE I CAN HELP WITH?
# The second time you say GOODBYE! they say THANK YOU FOR CALLING! and the program exits.

#require 'byebug'

puts "HELLO, THIS IS A GROCERY STORE! > "

ready_to_quit = false

input = ""
goodbye = "GOODBYE!"
goodbyes = 0

until ready_to_quit
  
  unless goodbyes == 2
    input = gets.chomp
  end
  
  if goodbyes == 2
    puts "THANK YOU FOR CALLING!"
    ready_to_quit = true

  elsif input == goodbye
    goodbyes += 1
    unless goodbyes == 2
      puts "ANYTHING ELSE I CAN HELP WITH?"
    end

  elsif input.empty?
    puts "HELLO?"

  elsif input != input.upcase
    puts "I AM HAVING A HARD TIME HEARING YOU."

  else
    puts "NO, THIS IS NOT A PET STORE."

  end
end