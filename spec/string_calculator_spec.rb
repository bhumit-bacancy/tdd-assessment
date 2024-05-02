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

    context 'when the input string is multiple numbers' do
      let(:input_string) { '5,6,7,8'}
  
      it 'returns 26 for 5,6,7,8' do
        expect(@calculator.add).to eq(26)
      end
    end

    context 'when the input string containes \n' do
      let(:input_string) { '1\n2,3'}
  
      it 'returns 6 for 1\n2,3' do
        expect(@calculator.add).to eq(6)
      end
    end

    context 'when the input string containes \n' do
      let(:input_string) { '1,\n'}
  
      it 'returns invalid for 1,\n' do
        expect(@calculator.add).to eq("invalid input")
      end
    end

    context 'when the input string containes different delimiters' do
      let(:input_string) { '//;\n1;2'}
  
      it 'returns 3 for //;\n1;2' do
        expect(@calculator.add).to eq(3)
      end
    end
  end
end
