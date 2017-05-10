require 'spec_helper'
require 'solution'

RSpec.describe Solution do
  describe '#go' do
    let(:steps) { [ ['R', 1], ['R', 3], ['R', 5], ['L', 3] ] }
    let(:expected_output) { 10 }
    subject(:code) { described_class.new(steps) }

    it 'returns steps from start for input steps' do
      expect(subject.go).to eq(expected_output)
    end
  end
  describe '#go' do
    let(:expected_output) { 299 }
    subject(:code) { described_class.new }

    it 'returns steps from start to solve advantage' do
      expect(subject.go).to eq(expected_output)
    end
  end
end