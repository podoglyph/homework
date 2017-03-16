#SuperFizzBuzz

numbers = (1..1000).to_a

numbers.each do |number|
  if number % 3 && number % 5 && number % 7 == 0
    puts "SuperFizzBuzz"
  elsif number % 3 && number % 7 == 0
    puts "SuperFizz"
  elsif number % 5 && number % 7 == 0
    puts "SuperBuzz"
  elsif number % 3 && number % 5 == 0
    puts "FizzBuzz"
  elsif number % 3 == 0
    puts "Fizz"
  elsif number % 5 == 0
    puts "Buzz"
  elsif number % 7 == 0
    puts "Super"
  else
    puts number
  end
end

#NOTE: instead of using a bunch of && operators connected to a completed string, build a string based on individual sets of conditions.

def superfizzbuzz
  (0..1000).each do |number|
    output = ""
    output += "Super" if(number % 7 == 0)
    output += "Fizz" if(number % 3 == 0)
    output += "Buzz" if(number % 5 == 0)
    puts (output.empty? ? number : output)
  end
end

superfizzbuzz()