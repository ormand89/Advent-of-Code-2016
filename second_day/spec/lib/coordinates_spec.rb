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
    shared_examples 'check element at coordinates' do |position:, symbal:|
      context "for coordinates #{position}" do
        subject(:matrix) { described_class.new(*position) }
        it "returns #{symbal}" do
          expect(subject.coordinates).to eq(symbal)
        end
      end 
    end
    include_examples 'check element at coordinates', position: [1, 3], symbal: 5
    include_examples 'check element at coordinates', position: [3, 3], symbal: 7
    include_examples 'check element at coordinates', position: [2, 3], symbal: 6
    include_examples 'check element at coordinates', position: [5, 3], symbal: 9
  end

end

