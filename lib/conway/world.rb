module Conway
  class World
    def initialize(cell_string, cell_grid: nil)
      @cell_grid = cell_grid || cells_from_string(cell_string)
    end

    def to_s
      cell_grid.map do |row|
        row.map do |cell|
          cell.alive? ? 1 : 0
        end.join
      end.join("\n")
    end

    def next
      self.class.new(nil, cell_grid: next_cell_grid)
    end

    private

    attr_reader :cell_grid

    def next_cell_grid
      cell_grid.map.with_index do |row, row_index|
        row.map.with_index do |cell, cell_index|
          next_cell(cell, row_index, cell_index)
        end
      end
    end

    def cells_from_string(cell_string)
      cell_string.split("\n").map do |row|
        row.each_char.map do |char|
          Cell.new(alive: char == '1')
        end
      end
    end

    def next_cell(cell, row_index, cell_index)
      cell.next(alive_neighbors: alive_neighbors(row_index, cell_index))
    end

    def alive_neighbors(row_index, cell_index)
      neighbors(row_index, cell_index).select(&:alive?).size
    end

    def neighbors(row_index, cell_index)
      [
        [-1, -1],
        [-1, 0],
        [-1, 1],
        [0, -1],
        [0, 1],
        [1, -1],
        [1, 0],
        [1, 1],
      ].map do |x_shift, y_shift|
        x = row_index +  x_shift
        y = cell_index + y_shift
        if (x >= 0) && (x >= 0)
          cell_grid.fetch(x, {})[y]
        end
      end.compact
    end
  end
end
