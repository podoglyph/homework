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
require './lib/calculator'
require 'pry'

class CalculatorTest < Minitest::Test

  def test_it_exists
    calc = Calculator.new

    assert_instance_of Calculator, calc
  end
  
  def test_add_method_adds
    calc = Calculator.new
    add_value = calc.add(50).total

    assert_equal 50, calc.sum
  end

  def test_subtract_method_subtracts
    calc = Calculator.new
    subtract_value = calc.subtract(40).total

    assert_equal -40, calc.sum
  end

  def test_clear_method_clears
    calc = Calculator.new
    calc.add(90)
    assert_equal 90, calc.sum

    calc.clear
    assert_equal 0, calc.sum
  end

  def test_clear_method_after_adding_and_subtracting
    calc = Calculator.new
    add_values = calc.add(45).subtract(40).total
    
    assert_equal 5, calc.sum
    calc.clear
    assert_equal 0, calc.sum
  end

  def test_clear_method_after_subtracting
    calc = Calculator.new
    subtract_values = calc.subtract(45).total
    #binding.pry
    assert_equal -45, calc.sum
    calc.clear
    assert_equal 0, calc.sum
  end

  def test_total_is_sum
    calc = Calculator.new
    temp_value = calc.add(5).total
    assert_equal 5, calc.total
  end

  def test_add_then_subtract_then_add_again
    calc = Calculator.new
    temp_value = calc.add(5).subtract(8).add(90).total
    
    assert_equal 87, calc.total
  end
  
end