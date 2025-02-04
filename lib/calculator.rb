# frozen_string_literal: true

require_relative 'string_sanitizer.rb'

class Calculator
  include StringSanitizer

  def add(string)
    negatives = string.scan(/-\d+/)

    raise "negatives not allowed: #{negatives.join(', ')}" unless negatives.empty?
    sanitize_string(string).inject(0) { |sum, str| compute_sum(str, sum) }
  end

  private

  def compute_sum(str, sum)
    sum + (str.to_i.positive? && str.to_i < 1000 ? str.to_i : 0)
  end
end
