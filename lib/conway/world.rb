module Conway
  class World
    def initialize(cell_string)
      @cell_grid = cells_from_string(cell_string)
    end

    def to_s
      cell_grid.map do |row|
        row.map do |cell|
          cell.alive? ? 1 : 0
        end.join
      end.join("\n")
    end

    private

    attr_reader :cell_grid

    def cells_from_string(cell_string)
      rows = cell_string.split("\n")
      rows.map do |row|
        row.each_char.map do |char|
          Cell.new(alive: char == '1')
        end
      end
    end
  end
end
