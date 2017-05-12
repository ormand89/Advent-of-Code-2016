require 'spec_helper'
require 'room'

RSpec.describe Room do
  describe '#id' do
    shared_examples 'check room id' do |parameters:, id_for_real:|
      context "for #{parameters}" do
        subject(:room) { described_class.new(parameters) }

        it "should be #{id_for_real}" do
          expect(subject.id).to eq(id_for_real)
        end
      end
    end

    include_examples 'check room id', parameters: [561, 'patyc', 'aczupnetwpdnlgpyrpcsfyedstaatyr'], id_for_real: 561
    include_examples 'check room id', parameters: [866, 'nymla', 'jsehsyafyvqwljsafafy'], id_for_real: 0
    include_examples 'check room id', parameters: [743, 'cnrdl', 'tyepcyletzylwncjzrpytnprropawzjxpye'], id_for_real: 0
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