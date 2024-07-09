require 'rspec'
require_relative 'string_calculator'

RSpec.describe StringCalculator do
    let(:calculator) { StringCalculator.new }

    describe '#add' do
      context 'with numbers separated by commas' do
        it 'returns the sum of the numbers' do
          expect(calculator.add("1,2,3")).to eq(6)
        end
      end

      context 'with numbers separated by newlines' do
        it 'returns the sum of the numbers' do
          expect(calculator.add("1\n2,3")).to eq(6)
        end
      end
    end
  end