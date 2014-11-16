require 'spec_helper'

describe Conwy::Cell do
  describe '#next' do
    context 'alive cell' do
      subject { described_class.new(alive: true) }
      context '1 alive neighbor' do
        it 'returns a dead cell' do
          expect(subject.next(alive_neighbors: 1)).not_to be_alive
        end
      end
      context '2 alive neighbors' do
        it 'returns an alive cell' do
          expect(subject.next(alive_neighbors: 2)).to be_alive
        end
      end
      context '3 alive neighbors' do
        it 'returns an alive cell' do
          expect(subject.next(alive_neighbors: 3)).to be_alive
        end
      end
      context '4 alive neighbor' do
        it 'returns a dead cell' do
          expect(subject.next(alive_neighbors: 4)).not_to be_alive
        end
      end
    end
    context 'dead cell' do
      subject { described_class.new(alive: false) }
      context '1 alive neighbor' do
        it 'returns a dead cell' do
          expect(subject.next(alive_neighbors: 1)).not_to be_alive
        end
      end
      context '2 alive neighbors' do
        it 'returns a dead cell' do
          expect(subject.next(alive_neighbors: 2)).not_to be_alive
        end
      end
      context '3 alive neighbors' do
        it 'returns an alive cell' do
          expect(subject.next(alive_neighbors: 3)).to be_alive
        end
      end
      context '4 alive neighbor' do
        it 'returns a dead cell' do
          expect(subject.next(alive_neighbors: 4)).not_to be_alive
        end
      end
    end
  end
end
