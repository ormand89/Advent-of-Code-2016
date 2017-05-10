require 'spec_helper'
require 'solution'

#Test module Parser.parameters

RSpec.describe Solution do
  describe '#parameters' do
    shared_examples 'check room parameters' do |rooms:, id:, checksum:, room_name:|
      context "for #{rooms}" do
        subject(:room) { described_class.new }
        it "returns #{id}, #{checksum}, #{room_name} after parsing" do
          expect(subject.parameters(rooms)).to eq([id, checksum, room_name])
        end
      end
    end
    include_examples 'check room parameters', rooms: "aczupnetwp-dnlgpyrpc-sfye-dstaatyr-561[patyc]",
                                              id: 561, checksum: 'patyc', room_name: 'aczupnetwpdnlgpyrpcsfyedstaatyr'
    include_examples 'check room parameters', rooms: "jsehsyafy-vqw-ljsafafy-866[nymla]",
                                              id: 866, checksum: 'nymla', room_name: 'jsehsyafyvqwljsafafy'
    include_examples 'check room parameters', rooms: "tyepcyletzylw-ncjzrpytn-prr-opawzjxpye-743[cnrdl]",
                                              id: 743, checksum: 'cnrdl', room_name: 'tyepcyletzylwncjzrpytnprropawzjxpye'
  end
end