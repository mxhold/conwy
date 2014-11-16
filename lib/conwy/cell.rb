module Conwy
  class Cell
    def initialize(alive:)
      @alive = alive
    end

    def alive?
      @alive
    end

    def next(alive_neighbors:)
      if alive_neighbors == 3 || (alive? && alive_neighbors == 2)
        self.class.new(alive: true)
      else
        self.class.new(alive: false)
      end
    end
  end
end
