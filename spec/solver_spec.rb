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
      subject { described_class.new(10, 'hello') }

      it 'returs olleh' do
        expect(subject.reverse).to eql('olleh')
      end
    end
  end

  describe '#fizzbuzz' do
    context 'when the input is divisible by 3' do
      subject { described_class.new(9, 'hello') }

      it 'returns fizz' do
        expect(subject.fizzbuzz).to eql('fizz')
      end
    end

    context 'when the input is divisible by 5' do
      subject { described_class.new(10, 'hello') }

      it 'returns buzz' do
        expect(subject.fizzbuzz).to eql('buzz')
      end
    end
  end
end
