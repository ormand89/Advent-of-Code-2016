require 'spec_helper'
require 'coordinates'

RSpec.describe Coordinates do
  describe '#move' do
    shared_examples 'check move order' do |start_position:, move:, result:|
      context "for move #{move}" do
        subject(:matrix) { described_class.new(*start_position) }

        it "returns #{result}" do
          expect(subject.move(move)).to eq(result)
        end
      end
    end

      include_examples 'check move order', start_position: [1, 3], move: 'L', result: nil
      include_examples 'check move order', start_position: [1, 3], move: 'R', result: 2
      include_examples 'check move order', start_position: [2, 3], move: 'U', result: 2
      include_examples 'check move order', start_position: [3, 3], move: 'D', result: 4
  end

  describe '#coordinates' do
    shared_examples 'check element at coordinates' do |coordinates:, symbol:|
      context "for coordinates #{coordinates}" do
        subject(:matrix) { described_class.new(*coordinates) }

        it "returns #{symbol}" do
          expect(subject.symbol).to eq(symbol)
        end
      end
    end

    include_examples 'check element at coordinates', coordinates: [1, 3], symbol: 5
    include_examples 'check element at coordinates', coordinates: [3, 3], symbol: 7
    include_examples 'check element at coordinates', coordinates: [2, 3], symbol: 6
    include_examples 'check element at coordinates', coordinates: [5, 3], symbol: 9
  end

  describe '#element_valid?' do
    shared_examples 'it_behaves_like Matrix' do |coordinates:, valid:|
      context "for coordinates #{coordinates}" do
        subject(:matrix) { described_class.new }

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