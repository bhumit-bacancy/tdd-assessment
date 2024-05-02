# string_calculator_spec.rb

require './string_calculator'

RSpec.describe StringCalculator do
  describe '#add' do
    before(:each) do
      @calculator = StringCalculator.new(input_string)
    end

    context 'when the input string is empty' do
      let(:input_string) { '' }

      it 'returns 0' do
        expect(@calculator.add).to eq(0)
      end
    end

    context 'when the input string is 1 number' do
      let(:input_string) { '5'}
  
      it 'returns 5 for 5' do
        expect(@calculator.add).to eq(5)
      end
    end

    context 'when the input string is 2 numbers' do
      let(:input_string) { '5,6'}
  
      it 'returns 11 for 5,6' do
        expect(@calculator.add).to eq(11)
      end
    end
  end
end
