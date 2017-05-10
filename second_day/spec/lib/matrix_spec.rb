require 'spec_helper'
require 'coordinates'
require 'matrix'

RSpec.describe Coordinates::Matrix do
  describe '#element_valid?' do
    shared_examples 'it_behaves_like Matrix' do |coordinates:, valid:|
      let (:class_with_extension) { Object.new.extend described_class }
      context "for coordinates #{coordinates}" do

        it "returns #{valid}" do
          expect(subject.element_valid?(*coordinates)).to eq(valid)
        end
      end
    end

    include_examples 'it_behaves_like Matrix', coordinates: [0, 2], valid: false
    include_examples 'it_behaves_like Matrix', coordinates: [3, 3], valid: true
    include_examples 'it_behaves_like Matrix', coordinates: [5, 2], valid: false
    include_examples 'it_behaves_like Matrix', coordinates: [5, 3], valid: true
  end
end