require 'spec_helper'
require 'solution'

RSpec.describe Solution do
  describe '#build_code' do
    let(:steps) { ['RLRDDRLL', 'UDLDURR'] }
    let(:expected_output) { ['A', 8] }
    subject(:code) { described_class.new(steps) }

    it 'returns code for input steps' do
      expect(subject.build_code).to eq(expected_output)
    end
  end
  describe '#build_code' do #To solve the advantage
    let(:expected_output) { [6, 7, 'B', 'B', 9] }
    subject(:code) { described_class.new }

    it 'returns code to solve advantage' do
      expect(subject.build_code).to eq(expected_output)
    end
  end
end