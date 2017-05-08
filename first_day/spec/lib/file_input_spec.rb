require 'spec_helper'
require 'file_input'

RSpec.describe FileInput do
  describe '#moves' do
    let(:input_file) { File.expand_path('../fixtures/task', File.dirname(__FILE__)) }
    let(:expected_output) { ['L1', 'L3', 'L5', 'L3', 'R1', 'L4', 'L5'] }
    subject(:path) { described_class.new(input_file) }

    it 'parse file to array of moves' do
      expect(subject.moves).to match_array(expected_output)
    end
  end
end