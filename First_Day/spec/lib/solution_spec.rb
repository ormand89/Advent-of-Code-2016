require 'spec_helper'
require 'solution'

RSpec.describe Solution do     
  describe '#go' do    
        subject(:code) { described_class.new }
        it "returns steps from start 299" do
          expect(subject.go).to eq(299)
        end
    end
end