require_relative '../shape'

class SLeft < Shape
  attr_reader :shapes

  def initialize(x, y)
    @shapes = [
      Square.new((x + 1) * PIXEL_SIZE, y * PIXEL_SIZE, PIXEL_SIZE, 'lime'),
      Square.new((x + 1) * PIXEL_SIZE, (y + 1) * PIXEL_SIZE, PIXEL_SIZE, 'lime'),
      Square.new(x * PIXEL_SIZE, (y + 1) * PIXEL_SIZE, PIXEL_SIZE, 'lime'),
      Square.new(x * PIXEL_SIZE, (y + 2) * PIXEL_SIZE, PIXEL_SIZE, 'lime')
    ]
  end

  def rotate
  end
end
