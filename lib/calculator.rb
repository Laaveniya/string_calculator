# frozen_string_literal: true

class Calculator
  def add(string)
    sum = 0
    negatives = []
    sanitize_string(string).split(',').each do |number|
      sum += number.to_i if number.to_i.positive?
      negatives << number if number.to_i.negative?
    end
    raise "negatives not allowed: #{negatives.join(', ')}" if negatives.any?
    sum
  end

  private

  def sanitize_string(string)
    delimiter = "\n"
    delimiter = string.lines.first[2] if string.start_with?('//')
    string.gsub(delimiter, ',')
  end
end
