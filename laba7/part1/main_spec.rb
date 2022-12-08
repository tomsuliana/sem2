# frozen_string_literal: true

require_relative 'main'
RSpec.describe FileWriter do
  describe 'NewFileWrite and SecondFileWrite' do
    context 'when all params passed' do
      let(:mas) { (1..Random.rand(1..10)).map { Random.rand(1..9) } }
      it 'should return uniq numbers' do
        FileWriter.new_file_write(mas)
        FileWriter.second_file_write
        strf = File.read('F.txt')
        strg = File.read('G.txt')
        masf = strf.split
        masg = strg.split
        p masf
        p masg
        expect(masf.uniq).to eq(masg)
      end
    end
  end
end
