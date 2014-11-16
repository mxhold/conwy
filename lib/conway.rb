require 'conway/version'
require 'conway/cell'
require 'conway/world'

module Conway
  def self.run(string)
    World.new(string).next.to_s
  end
end
