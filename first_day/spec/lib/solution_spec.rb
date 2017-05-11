require 'spec_helper'
require 'solution'

RSpec.describe Solution do
  describe '#go' do
    let(:input) { File.expand_path('../fixtures/task', File.dirname(__FILE__)) }
    let(:expected_output) { 4 }
    subject(:code) { described_class.new(input) }

    it 'returns steps from start for input steps' do
      expect(subject.go).to eq(expected_output)
    end
#To solve the advantage
    let(:input) { File.expand_path('../../lib/task', File.dirname(__FILE__)) }
    let(:expected_output) { 299 }
    subject(:code) { described_class.new(input) }

    it 'returns steps from start to solve advantage' do
      expect(subject.go).to eq(expected_output)
    end
  end
end