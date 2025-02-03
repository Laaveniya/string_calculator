# frozen_string_literal: true

class Calculator
  def add(string)
    santized_string = string.gsub("\n", ',')
    sum = 0
    santized_string.split(',').each{ |number| sum += number.to_i }
    sum
  end
end
