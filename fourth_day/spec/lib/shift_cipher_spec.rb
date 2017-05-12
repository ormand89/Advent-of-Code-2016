require 'spec_helper'
require 'shift_cipher'

RSpec.describe ShiftCipher do
  describe '#shift' do
    shared_examples 'shiftable' do |room_name:, id:, shifted_name:|
      context "for #{room_name} with #{id}" do
        subject(:room) { Object.new.extend(described_class) }

        it "should be #{shifted_name}" do
          expect(subject.shift(room_name, id)).to eq(shifted_name)
        end
      end
    end
    it_behaves_like 'shiftable', room_name: 'aczupnetwpdnlgpyrpcsfyedstaatyr', id: 561,
                                 shifted_name: 'projectilescavengerhuntshipping'
    it_behaves_like 'shiftable', room_name: 'jsehsyafyvqwljsafafy', id: 866,
                                 shifted_name: 'rampagingdyetraining'
    it_behaves_like 'shiftable', room_name: 'tipfxveztvxxcfxzjkztj', id: 555,
                                 shifted_name: 'cryogenicegglogistics'
    it_behaves_like 'shiftable', room_name: 'ghkmaihexhucxvmlmhktzx', id: 267,
                                 shifted_name: 'northpoleobjectstorage'
  end
end
