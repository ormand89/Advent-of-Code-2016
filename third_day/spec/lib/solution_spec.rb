require 'spec_helper'
require 'solution'

  FILE1 = File.expand_path('../fixtures/task', File.dirname(__FILE__))
  FILE2 = File.expand_path('../../lib/task', File.dirname(__FILE__))

RSpec.describe Solution do
  describe '#resolve_first_part' do
    shared_examples 'check solution order' do |input:, expected_output:|
      context "for #{input}" do
        subject(:first) { described_class.new(input) }

        it 'return valid triangles number by line' do
          expect(subject.resolve_first_part).to eq(expected_output)
        end
      end
    end

      include_examples 'check solution order', input: FILE1, expected_output: 1
      include_examples 'check solution order', input: FILE2, expected_output: 993 #To solve the advantage first_part
  end

  describe '#resolve_second_part' do
    shared_examples 'check solution order' do |input:, expected_output:|
      context "for #{input}" do
        subject(:second) { described_class.new(input) }

        it 'return valid triangles number by raw' do
          expect(subject.resolve_second_part).to eq(expected_output)
        end
      end
    end

      include_examples 'check solution order', input: FILE1, expected_output: 0
      include_examples 'check solution order', input: FILE2, expected_output: 1849 #To solve the advantage second_part

  end
end

