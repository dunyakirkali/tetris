require_relative '../shape'

class LRight < Shape
  def initialize(x, y)
    @points = [Point.new(x, y), Point.new(x, y + 1), Point.new(x, y + 2), Point.new(x + 1, y + 2)]
    @color = 0xff3E48CC
  end
end
