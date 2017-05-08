require 'spec_helper'
require 'compass'

RSpec.describe Compass do     
  describe '#move' do    
    shared_examples 'check move order' do |step:, start_side:, finish_side:, steps_number:|
      context "for move #{step}" do
        subject(:matrix) { described_class.new([0, 0], start_side) }
        it "returns #{finish_side} and #{steps_number}" do
          expect(subject.move(step)).to eq(finish_side)
          expect(subject.steps_from_start).to eq(steps_number)
        end
      end 
    end
    include_examples 'check move order', step: 'L10', start_side: North, finish_side: West, steps_number: 10
    include_examples 'check move order', step: 'L120', start_side: South, finish_side: East, steps_number: 120
    include_examples 'check move order', step: 'L3', start_side: West, finish_side: South, steps_number: 3
    include_examples 'check move order', step: 'L12', start_side: East, finish_side: North, steps_number: 12

    include_examples 'check move order', step: 'R5', start_side: North, finish_side: East, steps_number: 5
    include_examples 'check move order', step: 'R72', start_side: South, finish_side: West, steps_number: 72
    include_examples 'check move order', step: 'R61', start_side: West, finish_side: North, steps_number: 61
    include_examples 'check move order', step: 'R2', start_side: East, finish_side: South, steps_number: 2
  end

end

