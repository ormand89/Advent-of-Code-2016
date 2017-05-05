require 'spec_helper'
require 'solution'

RSpec.describe Solution do
  describe '#valid?' do
    shared_examples 'check triangle' do |sides:, possible:|
      context "for #{sides}" do
        subject(:triangle) { described_class.new }
        it "should be #{possible}" do
          expect(subject.valid?(sides)).to eq(possible)
        end
      end
    end

    include_examples 'check triangle', sides: [605, 656, 369], possible: true
    include_examples 'check triangle', sides: [727, 548, 469], possible: true
    include_examples 'check triangle', sides: [58, 84, 437], possible: false
    include_examples 'check triangle', sides: [674, 524, 68], possible: false
    include_examples 'check triangle', sides: [467, 452, 792], possible: true
    include_examples 'check triangle', sides: [841, 519, 660], possible: true
    include_examples 'check triangle', sides: [5, 10, 25], possible: false
  end

  describe '#resolve_first' do
    subject(:first) { described_class.new }   
    it 'should return correct result' do
      expect(subject.resolve_first).to eq(993)
    end
  end

  describe '#resolve_second' do
    subject(:second) { described_class.new }   
    it 'should return correct result' do
      expect(subject.resolve_second).to eq(1849)
    end
  end
end

