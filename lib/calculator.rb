# frozen_string_literal: true

require_relative 'string_sanitizer.rb'

class Calculator
  include StringSanitizer

  def add(string)
    sum = 0
    negatives = []
    sanitize_string(string).split(',').each do |number|
      sum, negatives = manipulate(number, sum, negatives)
    end
    raise "negatives not allowed: #{negatives.join(', ')}" if negatives.any?
    sum
  end

  private

  def manipulate(number, sum, negatives)
    sum += number.to_i if number.to_i.positive?
    negatives << number if number.to_i.negative?
    [sum, negatives]
  end
end
