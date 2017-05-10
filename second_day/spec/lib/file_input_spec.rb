require 'spec_helper'
require 'file_input'

RSpec.describe FileInput do
  describe '#steps' do
    let(:input_file) { File.expand_path('../fixtures/task', File.dirname(__FILE__)) }
    let(:expected_output) { ['RLRDDRLL', 'UDLDURR'] }
    subject(:path) { described_class.new(input_file) }

    it 'parse file to array of steps' do
      expect(subject.steps).to match_array(expected_output)
    end
  end
end