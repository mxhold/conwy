require 'spec_helper'

describe Conwy do
  it 'has a version number' do
    expect(Conwy::VERSION).not_to be nil
  end

  describe '.run' do
    context 'given a string' do
      it 'returns the outcome' do
        expect(described_class.run("010\n010\n010")).to eql "000\n111\n000"
      end
    end

    context 'given an oscillator' do
      it 'returns the input after two runs' do
        input = "010\n010\n010"
        output = described_class.run(input)
        expect(described_class.run(output)).to eql input
      end
    end
  end
end
