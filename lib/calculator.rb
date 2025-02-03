# frozen_string_literal: true

class Calculator
  def add(string)
    delimiter = "\n"
    delimiter = string.lines.first[2] if string.start_with?('//')
    santized_string = string.gsub(delimiter, ',')
    sum = 0
    santized_string.split(',').each{ |number| sum += number.to_i }
    sum
  end
end
