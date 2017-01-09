require_relative '../shape'

class SRight < Shape
  def initialize(x, y)
    @points = [Point.new(x, y), Point.new(x, y + 1), Point.new(x + 1, y + 1), Point.new(x + 1, y + 2)]
    @color = 0xffED1B24
  end
end
