require 'spec_helper'
require 'solution'

RSpec.describe Solution do
  describe '#solve' do   
    subject(:room) { described_class.new }
    it "returns sum = 278221, and id = 267" do
      expect(subject.solve).to eq([278221, 267])
    end
  end
end