require 'pry'

class Calculator

  attr_accessor :sum, :value
  
  def initialize
    @sum = 0
  end

  def total
    @sum
  end
  
  def add(value)
    @sum += value
    self
  end

  def subtract(value)
    @sum -= value
    self
  end
  
  def clear
    @sum = 0
  end
  #binding.pry
end