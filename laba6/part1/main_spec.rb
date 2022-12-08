# frozen_string_literal: true

require_relative 'main'
RSpec.describe FuncLengthCalc do
  describe 'calculate' do
    context 'when epsilon initialized' do
      let(:funcalc) { FuncLengthCalc.new }
      it 'should return 1.25 for e=0.001' do
        expect(funcalc.calculate(0.001)).to eq(1.2548467251236068)
        expect(funcalc.iter_count).to eq(32)
      end

      it 'should return 1.23 for e=0.0001' do
        expect(funcalc.calculate(0.0001)).to eq(1.2324597194149116)
        expect(funcalc.iter_count).to eq(105)
      end
    end
  end
end
