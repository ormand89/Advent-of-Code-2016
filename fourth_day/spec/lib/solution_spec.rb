require 'spec_helper'
require 'solution'

  FILE1 = File.expand_path('../fixtures/task', File.dirname(__FILE__))
  FILE2 = File.expand_path('../../lib/task', File.dirname(__FILE__))

RSpec.describe Solution do
  describe '#solve_problem' do
    shared_examples 'check solution order' do |input:, expected_output:|
      context "for #{input}" do
        subject(:rooms) { described_class.new(input) }

        it 'return sum of id for real rooms' do
          expect(subject.solve_problem).to eq(expected_output)
        end
      end
    end

      include_examples 'check solution order', input: FILE1, expected_output: [561, nil]
      include_examples 'check solution order', input: FILE2, expected_output: [278221, 267] #To solve the advantage
  end
end

