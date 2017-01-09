require_relative '../shape'

class LLeft < Shape
  def initialize(x, y)
    @points = [Point.new(x + 1, y), Point.new(x + 1, y + 1), Point.new(x + 1, y + 2), Point.new(x, y + 2)]
    @color = 0xffFF7F26
  end
end
