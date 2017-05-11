require 'spec_helper'
require 'matrix_helper'

RSpec.describe MatrixHelper do
  describe '#element_valid?' do
    shared_examples 'check element at coordinates' do |coordinates:, valid:|
      context "for coordinates #{coordinates}" do
        subject(:matrix) { described_class }

        it "returns #{valid}" do
          expect(subject.element_valid?(*coordinates)).to eq(valid)
        end
      end
    end

    include_examples 'check element at coordinates', coordinates: [0, 3], valid: false
    include_examples 'check element at coordinates', coordinates: [2, 4], valid: true
    include_examples 'check element at coordinates', coordinates: [1, 3], valid: true
    include_examples 'check element at coordinates', coordinates: [5, 5], valid: false
  end
end
