#SuperFizzBuzz

#NOTE: instead of using a bunch of && operators connected to a completed string, build a string based on individual sets of conditions.

def burger_shack_special
  (0..1000).each do |number|
    output = ""
    output += "Super" if(number % 7 == 0)
    output += "Fizz" if(number % 3 == 0)
    output += "Buzz" if(number % 5 == 0)
    puts (output.empty? ? number : output);
  end
end

burger_shack_special()