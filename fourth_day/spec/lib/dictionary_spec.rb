require 'spec_helper'
require 'dictionary'

RSpec.describe Dictionary do
  describe '#count_checksum' do
    shared_examples 'dictionary' do |room_name:, checksum:|
      context "for #{room_name}" do
        subject(:room) { Object.new.extend(described_class) }

        it "should be #{checksum}" do
          expect(subject.count_checksum(room_name)).to eq(checksum)
        end
      end
    end

    it_behaves_like 'dictionary', room_name: 'aczupnetwpdnlgpyrpcsfyedstaatyr', checksum: 'patyc'
    it_behaves_like 'dictionary', room_name: 'jsehsyafyvqwljsafafy', checksum: 'afsyj'
    it_behaves_like 'dictionary', room_name: 'tyepcyletzylwncjzrpytnprropawzjxpye', checksum: 'pyert'
  end
end