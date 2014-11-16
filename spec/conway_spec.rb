require 'spec_helper'

describe Conway do
  it 'has a version number' do
    expect(Conway::VERSION).not_to be nil
  end

  describe '.run' do
    context 'given a string' do
      it 'returns the outcome' do
        expect(described_class.run("010\n010\n010")).to eql "000\n111\n000"
      end
    end
end
