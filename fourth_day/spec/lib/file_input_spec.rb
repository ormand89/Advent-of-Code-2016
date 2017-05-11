require 'spec_helper'
require 'file_input'

RSpec.describe FileInput do
  describe '#rooms' do
    let(:input_file) { File.expand_path('../fixtures/task', File.dirname(__FILE__)) }
    let(:expected_output) { ['aczupnetwp-dnlgpyrpc-sfye-dstaatyr-561[patyc]',
                             'tyepcyletzylw-ncjzrpytn-prr-opawzjxpye-743[cnrdl]',
                             'jsehsyafy-vqw-ljsafafy-866[nymla]',
                             'foadouwbu-qvcqczohs-obozmgwg-662[lamjh]'] }
    subject(:path) { described_class.new(input_file) }

    it 'parse file to array of rooms' do
      expect(subject.rooms).to match_array(expected_output)
    end
  end
end