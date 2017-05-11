require 'spec_helper'
require 'solution'

RSpec.describe Solution do
  describe '#go' do
    shared_examples 'check solution order' do |input:, expected_output:|
      context "for #{input}" do
        subject(:code) { described_class.new(input) }

        it 'returns steps from start for input file' do
          expect(subject.go).to eq(expected_output)
        end
      end
    end

      include_examples 'check solution order', input: File.expand_path('../fixtures/task', File.dirname(__FILE__)),
                                               expected_output: 4
      include_examples 'check solution order', input: File.expand_path('../../lib/task', File.dirname(__FILE__)),
                                               expected_output: 299 #To solve the advantage

  end
end



