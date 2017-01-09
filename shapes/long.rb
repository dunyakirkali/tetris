require 'gosu'

require_relative '../shape'

class Long < Shape
  def initialize(x, y)
    @points = [Point.new(x, y), Point.new(x, y - 1), Point.new(x, y - 2), Point.new(x, y - 3)]
    @color = 0xff01A2E8
  end
end
