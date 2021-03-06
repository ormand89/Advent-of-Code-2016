require 'spec_helper'
require 'password_generator'


RSpec.describe PasswordGenerator do
  describe '#solve_first' do
    subject(:code) { described_class.new }

      it "returns code 2414bc77" do
        expect(subject.password_from_hash).to eq('2414bc77')
      end
  end

  describe '#solve_second' do
    subject(:code) { described_class.new }

      it "returns code 437e60fc" do
        expect(subject.password_from_hash_with_position).to eq('437e60fc')
      end
  end
end