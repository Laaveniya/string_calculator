# frozen_string_literal: true

class Calculator
  def add(string)
    sum = 0
    sanitize_string(string).split(',').each{ |number| sum += number.to_i }
    sum
  end

  private

  def sanitize_string(string)
    delimiter = "\n"
    delimiter = string.lines.first[2] if string.start_with?('//')
    string.gsub(delimiter, ',')
  end
end
