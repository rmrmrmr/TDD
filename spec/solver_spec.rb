require 'rspec'
require_relative '../solver'

RSpec.describe Solver do
  describe '#factorial' do
    context 'when the input is 10' do
      subject { described_class.new(10) }

      it 'returns 3628800' do
        expect(subject.factorial).to eql(3_628_800)
      end
    end

    context 'when the input is 0' do
      subject { described_class.new(0) }

      it 'returns 1' do
        expect(subject.factorial).to eql(1)
      end
    end

    context 'when the input is a negative integer' do
      subject { described_class.new(-10) }

      it 'returns "Please enter a positive integer"' do
        expect(subject.factorial).to eql('Please enter a positive integer')
      end
    end
  end

  describe '#reverse' do
    context "when the input is 'hello'" do
      subject { described_class.new(word = 'hello') }

      it 'returs olleh' do
        expect(subject.reverse).to eql('olleh')
    end
  end
end
end
