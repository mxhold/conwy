require 'conwy/version'
require 'conwy/cell'
require 'conwy/world'

module Conwy
  def self.run(string)
    World.new(string).next.to_s
  end
end
