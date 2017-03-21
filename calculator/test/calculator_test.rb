# Build a calculator class from scratch using TDD
# Start with whiteboarding and pseudocode
# Write pseudocode in the test file first for a few methods
# Your calculator should be able to handle the following methods:
# .new
# #total
# #add
# #clear
# #subtract

#Pseudocode: 
#1. create a calculator class
#2. create methods for each function
#3. need variables to hold values for total and values
#4. need a method to clear the variables and reset

#5 test that the class exists
#6 test that each method modifies the total
#7 test that multiple methods can run before clear

require 'minitest/autorun'
require './lib/calculator.rb'
require 'pry'

class CalculatorTest < Minitest::Test

  def test_it_exists
    calc = Calculator.new

    assert_instance_of Calculator, calc
  end
  
  def test_add_method_adds
    calc = Calculator.new

    assert_equal calc.add(50), calc.sum
  end

  def test_subtract_method_substracts
    calc = Calculator.new

    assert_equal calc.subtract(50), calc.sum
  end

  def test_clear_method_clears
    calc = Calculator.new
    sum = 20
    #binding.pry
    assert_equal calc.clear, calc.sum
  end

  def test_total_is_sum
    calc = Calculator.new
    temp_value = calc.add(5)
    assert_equal temp_value, calc.total
  end
  
end