require 'spec_helper'
require 'solution'

RSpec.describe Solution do
  describe '#valid?' do
    shared_examples 'triangle' do |sides:, possible:|
      context "for #{sides}" do
        subject(:triangle) { described_class.new('triangle') }

        it "returns #{possible}" do
          expect(subject.valid?(sides)).to eq(possible)
        end
      end
    end

    it_behaves_like 'triangle', sides: [605, 656, 369], possible: true
    it_behaves_like 'triangle', sides: [727, 548, 469], possible: true
    it_behaves_like 'triangle', sides: [58, 84, 437], possible: false
    it_behaves_like 'triangle', sides: [674, 524, 68], possible: false
    it_behaves_like 'triangle', sides: [467, 452, 792], possible: true
    it_behaves_like 'triangle', sides: [841, 519, 660], possible: true
    it_behaves_like 'triangle', sides: [5, 10, 25], possible: false
  end
end