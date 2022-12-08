# frozen_string_literal: true

require_relative 'main'
RSpec.describe Triangle do
  describe 'triangle' do
    context 'when all parameters passed' do
      let(:triang) { Triangle.new(6, 8, 10) }
      it 'should have square 24' do
        expect(triang.squaret).to eq(24.0)
      end
    end
  end
  describe 'quad' do
    context 'when all parameters passed' do
      let(:quad) { Quad.new(18, 6, 8, 10) }
      it 'should have square 56' do
        expect(quad.squareq).to eq(56.5685424949238)
      end
      it 'should be triangle child' do
        expect(quad.instance_of?(Triangle)).to eq(false)
        expect(quad.is_a?(Triangle)).to eq(true)
      end
    end
  end
end
