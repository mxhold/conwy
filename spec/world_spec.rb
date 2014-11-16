require 'spec_helper'

describe Conway::World do
  describe '#to_s' do
    it 'returns a string of 0s and 1s representing dead and alive cells' do
      expect(described_class.new("010\n010\n010").to_s).to eql "010\n010\n010"
    end
  end
end
