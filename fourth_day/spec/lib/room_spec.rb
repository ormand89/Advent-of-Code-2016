require 'spec_helper'
require 'room'

RSpec.describe Room do
  describe '#id' do
    shared_examples 'check room id' do |parametres:, valid:|
      context "for #{parametres}" do
        subject(:room) { described_class.new(parametres) }

        it "should be #{valid}" do
          expect(subject.id).to eq(valid)
        end
      end
    end
    include_examples 'check room id', parametres: [561, 'patyc', 'aczupnetwpdnlgpyrpcsfyedstaatyr'], valid: 561
    include_examples 'check room id', parametres: [866, 'nymla', 'jsehsyafyvqwljsafafy'], valid: 0
    include_examples 'check room id', parametres: [743, 'cnrdl', 'tyepcyletzylwncjzrpytnprropawzjxpye'], valid: 0
  end

  describe '#caesar_code' do
    shared_examples 'check encryption id' do |input:, valid:|
      context "for #{input}" do
        subject(:room) { described_class.new(input) }

          it 'returns id if encryption correct' do
            expect(subject.caesar_code).to eq(valid)
          end
      end
    end
    include_examples 'check encryption id', input: [561, 'patyc', 'aczupnetwpdnlgpyrpcsfyedstaatyr'], valid: nil
    include_examples 'check encryption id', input: [267, 'hmxka', 'ghkmaihexhucxvmlmhktzx'], valid: 267
  end
end