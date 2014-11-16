require 'spec_helper'

describe Conwy::World do
  subject do
    described_class.new("010\n010\n010")
  end

  describe '#to_s' do
    it 'returns a string of 0s and 1s representing dead and alive cells' do
      expect(subject.to_s).to eql "010\n010\n010"
    end
  end

  describe '#next' do
    it 'returns a new world with evolved cells' do
      expect(subject.next.to_s).to eql "000\n111\n000"
    end
  end
end
