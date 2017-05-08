require 'spec_helper'
require 'history'

RSpec.describe History do
  describe '#update_history' do
    shared_examples 'check history order' do |coordinates:, expected_repeat:|
      context "for #{coordinates}" do
        subject(:history) { described_class.new }

        it "returns #{expected_repeat}" do
          coordinates.each do |coordinate|
            subject.update_history(coordinate)
          end
          expect(subject.first_repeat).to eq(expected_repeat)
        end
      end
    end

      include_examples 'check history order', coordinates: [ [0, 1], [0, 2] ], expected_repeat: nil
      include_examples 'check history order', coordinates: [ [0, 1], [0, 1] ], expected_repeat: [0, 1]
      include_examples 'check history order', coordinates: [ [1, 2], [0, 0] ], expected_repeat: [0, 0]
      include_examples 'check history order', coordinates: [ [1, 3], [1, 4], [1, 5] ], expected_repeat: nil
  end
end

