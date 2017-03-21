require 'pry'

class Calculator

  attr_reader :sum, :value
  
  def initialize()
    @sum = 0
    @value = value
  end

  def total
    @sum
  end
  
  def add(value)
    @sum += value
  end

  def subtract(value)
    @sum -= value
  end
  
  def clear
    @sum = 0
  end

end