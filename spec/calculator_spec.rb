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

    it 'returns the sum when two numbers are separated by a comma' do
      expect(subject.add('1,2')).to eq(3)
    end

    it 'returns the sum when three numbers are separated by a comma' do
      expect(subject.add('1,2,3')).to eq(6)
    end

    context 'when the numbers are separated by a comma or a newline' do
      it 'returns the sum' do
        expect(subject.add("1\n2,3")).to eq(6)
      end
    end

    context 'support different delimters' do
      it 'returns the sum when the delimiter is a semicolon' do
        expect(subject.add("//;\n1;2")).to eq(3)
      end
    end
  end
end
