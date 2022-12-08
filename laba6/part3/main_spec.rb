# frozen_string_literal: true

require_relative 'main'
foo1 = ->(x) { x + Math.cos(x) }
foo2 = ->(x) { Math.tan(x + 1) / (x + 1) }
proc1 = proc { |x| x + Math.cos(x) }
proc2 = proc { |x| Math.tan(x + 1) / (x + 1) }
RSpec.describe IntegralCalc do
  describe 'trap' do
    context 'when all parameters passed' do
      let(:firstint) { IntegralCalc.new }
      let(:secondint) { IntegralCalc.new }
      it 'should return 7.58 for first integral' do
        firstint.perem(-1, 4)
        expect(firstint.trap(25, foo1)).to eq(7.584386072870065)
        expect(firstint.trap(25, proc1)).to eq(7.584386072870065)
      end
      it 'should return -0.37 for second integral' do
        secondint.perem(1, 2)
        expect(secondint.trap(25, foo2)).to eq(-0.37728059787272444)
        expect(secondint.trap(25, proc2)).to eq(-0.37728059787272444)
      end
    end
  end
end
