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

      context 'with a single number' do
        it 'returns the number itself' do
          expect(calculator.add("1")).to eq(1)
        end
      end

      context 'with two numbers separated by a newline' do
        it 'returns their sum' do
          expect(calculator.add("1\n2")).to eq(3)
        end
      end

      context 'with a custom delimiter' do
        it 'returns the sum of the numbers' do
          expect(calculator.add("//;\n1;2")).to eq(3)
        end
      end

      context 'with negative numbers' do
        it 'raises an exception with a message listing the negative numbers' do
          expect { calculator.add("2,-4,3,-5") }.to raise_error("Negatives not allowed: -4,-5")
        end
      end

      context 'with multiple custom delimiters' do
        it 'returns the sum of the numbers' do
          expect(calculator.add("//[*][%]\n1*2%3")).to eq(6)
        end
      end

      context 'with custom delimiters of variable length' do
        it 'returns the sum of the numbers' do
          expect(calculator.add("//[$$$]\n1$$$2$$$3")).to eq(6)
        end
      end

      context 'with a large number of inputs' do
        it 'returns the correct sum for 1000 numbers' do
          input = (1..1000).to_a.join(',')
          expected_sum = (1..1000).sum
          expect(calculator.add(input)).to eq(expected_sum)
        end
  
        it 'returns the correct sum for 10000 numbers' do
          input = (1..10000).to_a.join(',')
          expected_sum = (1..10000).sum
          expect(calculator.add(input)).to eq(expected_sum)
        end
      end
    end
  end