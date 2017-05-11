require 'spec_helper'
require 'solution'

RSpec.describe Solution do
  describe '#build_code' do
    shared_examples 'check solution order' do |input:, expected_output:|
      context "for #{input}" do
        subject(:code) { described_class.new(input) }

        it 'returns code for input steps' do
          expect(subject.build_code).to eq(expected_output)
        end
      end
    end

      include_examples 'check solution order', input: File.expand_path('../fixtures/task', File.dirname(__FILE__)),
                                               expected_output: ['A', 8]
      include_examples 'check solution order', input: File.expand_path('../../lib/task', File.dirname(__FILE__)),
                                               expected_output: [6, 7, 'B', 'B', 9] #To solve the advantage

  end
end

