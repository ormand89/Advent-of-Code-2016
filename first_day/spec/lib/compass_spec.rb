require 'spec_helper'
require 'compass'

RSpec.describe Compass do
  describe '#move' do
    shared_examples 'check move order' do |step:, start_side:, finish_side:|
      context "for move #{step} from #{start_side}" do
        subject(:compass) { described_class.new(start_side, [0, 0]) }

        it "returns #{finish_side} and steps #{step[1]}" do
          expect(subject.move(*step)).to eq(finish_side)
          expect(subject.steps_from_start).to eq(step[1])
        end
      end
    end

      include_examples 'check move order', step: ['L', 10], start_side: North, finish_side: West
      include_examples 'check move order', step: ['L', 120], start_side: South, finish_side: East
      include_examples 'check move order', step: ['L', 3], start_side: West, finish_side: South
      include_examples 'check move order', step: ['L', 12], start_side: East, finish_side: North

      include_examples 'check move order', step: ['R', 5], start_side: North, finish_side: East
      include_examples 'check move order', step: ['R', 72], start_side: South, finish_side: West
      include_examples 'check move order', step: ['R', 61], start_side: West, finish_side: North
      include_examples 'check move order', step: ['R', 18], start_side: East, finish_side: South
  end
end

