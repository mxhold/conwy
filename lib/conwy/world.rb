module Conwy
  class World
    def initialize(cell_string)
      @cell_grid = CellGrid.from_s(cell_string)
    end

    def to_s
      cell_grid.to_s
    end

    def next
      self.class.new(cell_grid.next.to_s)
    end

    private

    attr_reader :cell_grid

    class CellGrid < SimpleDelegator
      def self.from_s(string)
        new(string.split("\n").map do |row|
          row.each_char.map do |char|
            Cell.new(alive: char == '1')
          end
        end)
      end

      def to_s
        map do |row|
          row.map do |cell|
            cell.alive? ? 1 : 0
          end.join
        end.join("\n")
      end

      def next
        self.class.new(map.with_index do |row, x|
          row.map.with_index do |cell, y|
            cell.next(alive_neighbors: alive_neighbors(Coordinate.new(x, y)))
          end
        end)
      end

      private

      def alive_neighbors(coordinate)
        neighbors(coordinate).select(&:alive?).size
      end

      def neighbors(coordinate)
        coordinate.neighbors.map do |neighbor_coordinate|
          at(neighbor_coordinate)
        end.compact
      end

      def at(coordinate)
        fetch(coordinate.x, {})[coordinate.y] unless coordinate.negative?
      end

      class Coordinate < Struct.new(:x, :y)
        def negative?
          x < 0 || y < 0
        end

        def neighbors
          neighbor_shifts.map do |x, y|
            shift(x, y)
          end
        end

        private

        def shift(x_shift, y_shift)
          self.class.new(x + x_shift, y + y_shift)
        end

        def neighbor_shifts
          [
            [-1, -1], [-1,  0], [-1,  1],
            [ 0, -1],           [ 0,  1],
            [ 1, -1], [ 1,  0], [ 1,  1],
          ]
        end
      end
    end
  end
end
