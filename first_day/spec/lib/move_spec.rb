require 'spec_helper'
require 'move'

RSpec.describe Move do
  describe '#direction' do
    shared_examples 'check move order' do |step:, direction:|
      context "for move #{step}" do
        subject(:move) { described_class.new(step) }

        it 'parse step to side direction' do
          expect(subject.direction).to eq(direction)
        end
      end
    end

      include_examples 'check move order', step: 'L10', direction: 'L'
      include_examples 'check move order', step: 'R10', direction: 'R'
      include_examples 'check move order', step: 'L22', direction: 'L'
      include_examples 'check move order', step: 'R3', direction: 'R'
  end

    describe '#steps_count' do
    shared_examples 'check move order' do |step:, steps_count:|
      context "for move #{step}" do
        subject(:move) { described_class.new(step) }

        it 'parse step to number of steps' do
          expect(subject.steps_count).to eq(steps_count)
        end
      end
    end

      include_examples 'check move order', step: 'L10', steps_count: 10
      include_examples 'check move order', step: 'R10', steps_count: 10
      include_examples 'check move order', step: 'L22', steps_count: 22
      include_examples 'check move order', step: 'R3', steps_count: 3
  end
end

