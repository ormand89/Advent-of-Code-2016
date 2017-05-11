require 'spec_helper'
require 'solution'

#Test module Parser.parameters

RSpec.describe Solution do
  describe '#parameters' do
    shared_examples 'parsable' do |room:, id:, checksum:, room_name:|
      context "for #{room}" do
        subject(:rooms) { described_class.new('Parser') }
        it "returns #{id}, #{checksum}, #{room_name} after parsing" do
          expect(subject.parameters(room)).to eq([id, checksum, room_name])
        end
      end
    end

    it_behaves_like 'parsable', room: "aczupnetwp-dnlgpyrpc-sfye-dstaatyr-561[patyc]",
                                id: 561, checksum: 'patyc', room_name: 'aczupnetwpdnlgpyrpcsfyedstaatyr'
    it_behaves_like 'parsable', room: "jsehsyafy-vqw-ljsafafy-866[nymla]",
                                id: 866, checksum: 'nymla', room_name: 'jsehsyafyvqwljsafafy'
    it_behaves_like 'parsable', room: "tyepcyletzylw-ncjzrpytn-prr-opawzjxpye-743[cnrdl]",
                                id: 743, checksum: 'cnrdl', room_name: 'tyepcyletzylwncjzrpytnprropawzjxpye'
  end
end