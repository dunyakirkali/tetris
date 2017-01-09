require_relative '../shape'

class SLeft < Shape
  def initialize(x, y)
    @points = [Point.new(x + 1, y), Point.new(x + 1, y + 1), Point.new(x, y + 1), Point.new(x, y + 2)]
    @color = 0xff25B14C
  end
end
