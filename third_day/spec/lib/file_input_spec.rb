require 'spec_helper'
require 'file_input'

RSpec.describe FileInput do
  describe '#sides_by_line' do
    let(:input_file) { File.expand_path('../fixtures/task', File.dirname(__FILE__)) }
    let(:expected_output) { [[541, 588, 421], [229, 871, 3], [10, 15, 25]] }
    subject(:path) { described_class.new(input_file) }

    it 'parse file to array of triangle sides by line' do
      expect(subject.sides_by_line).to match_array(expected_output)
    end
  end

  describe '#sides_by_raw' do
    let(:input_file) { File.expand_path('../fixtures/task', File.dirname(__FILE__)) }
    let(:expected_output) { [[541, 229, 10], [588, 871, 15], [421, 3, 25]] }
    subject(:path) { described_class.new(input_file) }

    it 'parse file to array of triangle sides by raw' do
      expect(subject.sides_by_raw).to match_array(expected_output)
    end
  end
end