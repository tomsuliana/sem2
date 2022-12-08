# frozen_string_literal: true

require_relative 'main'
RSpec.describe FuncLengthCalc do
  describe 'calculate' do
    context 'when epsilon initialized' do
      it 'should return 1.25 for e=0.001' do
        expect(FuncLengthCalc.calculate(0.001)[1]).to eq(1.2568951702664586)
        expect(FuncLengthCalc.calculate(0.001)[0]).to eq(32)
      end

      it 'should return 1.23 for e=0.0001' do
        expect(FuncLengthCalc.calculate(0.0001)[1]).to eq(1.2326585401178016)
        expect(FuncLengthCalc.calculate(0.0001)[0]).to eq(105)
      end
    end
  end
end
