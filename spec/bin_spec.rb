require 'spec_helper'

describe 'bin/conwy' do
  context 'given a string of cells from stdin' do
    it 'returns the next iteration of the game' do
      expect(
        `echo "010\n010\n010" | bundle exec ./bin/conwy`
      ).to eql("000\n111\n000\n")
    end
    context 'and a number' do
      it 'does the provided number of iterations and prints the result' do
        expect(
          `echo "010\n010\n010" | bundle exec ./bin/conwy 2`
        ).to eql("010\n010\n010\n")
      end
    end
  end
end
