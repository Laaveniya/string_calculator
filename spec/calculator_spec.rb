# frozen_string_literal: true
require 'rspec'
require_relative '../lib/calculator'

RSpec.describe Calculator do
  describe '#add' do
    it 'returns zero on empty string' do
      expect(subject.add('')).to eq(0)
    end

    it 'returns the number on a single number' do
      expect(subject.add('1')).to eq(1)
    end
  end
end
