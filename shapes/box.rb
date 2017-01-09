require_relative '../shape'

class Box < Shape
  def initialize(x, y)
    @points = [Point.new(x, y), Point.new(x + 1, y), Point.new(x, y + 1), Point.new(x + 1, y + 1)]
    @color = 0xffFFC90C
  end
end
