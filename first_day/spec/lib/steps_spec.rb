require 'spec_helper'
require 'steps'

RSpec.describe Steps do
  describe '#steps' do
    let(:input_array) { ['L1', 'L3', 'L5', 'L3', 'R1', 'L4', 'L5'] }
    let(:expected_output) { [['L', 1], ['L', 3], ['L', 5], ['L', 3], ['R', 1], ['L', 4], ['L', 5]] }
    subject(:step) { described_class.new(input_array) }

    it 'parse moves array to array of sides and steps' do
      expect(subject.steps).to match_array(expected_output)
    end
  end
end