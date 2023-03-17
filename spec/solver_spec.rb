require 'rspec'
require_relative '../solver'

RSpec.describe Solver do
  describe '#factorial' do
    context 'when the input is 10' do
      subject { described_class.new(N: 10) }

      it 'returns 3628800' do
        subject.factorial
        expect(subject).to eql(3628800)
      end
    end
  end
end