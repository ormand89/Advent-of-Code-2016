require 'spec_helper'
require 'compass'
require 'move'

RSpec.describe Compass do
  describe '#move' do
    shared_examples 'check move order' do |step:, start_side:, finish_side:, steps_from_start:|
      context "for move #{step} from #{start_side}" do
        subject(:compass) { described_class.new(start_side) }
        let (:move) { Move.new(step) }

        it "returns #{finish_side} and #{steps_from_start}" do
          expect(subject.move(move)).to eq(finish_side)
          expect(subject.steps_from_start).to eq(steps_from_start)
        end
      end
    end

      include_examples 'check move order', step: 'L10', start_side: North, finish_side: West, steps_from_start: 10
      include_examples 'check move order', step: 'L120', start_side: South, finish_side: East, steps_from_start: 120
      include_examples 'check move order', step: 'L3', start_side: West, finish_side: South, steps_from_start: 3
      include_examples 'check move order', step: 'L12', start_side: East, finish_side: North, steps_from_start: 12

      include_examples 'check move order', step: 'R5', start_side: North, finish_side: East, steps_from_start: 5
      include_examples 'check move order', step: 'R72', start_side: South, finish_side: West, steps_from_start: 72
      include_examples 'check move order', step: 'R61', start_side: West, finish_side: North, steps_from_start: 61
      include_examples 'check move order', step: 'R18', start_side: East, finish_side: South, steps_from_start: 18
  end
end

