require 'spec_helper'
require 'solution'

RSpec.describe Solution do     
  describe '#build_code' do    
        subject(:room) { described_class.new }
        it "returns [6, 7, 'B', 'B', 9]" do
          expect(subject.build_code).to eq([6, 7, 'B', 'B', 9])
        end
    end
end