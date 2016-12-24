class Box
  attr_reader :shapes

  def initialize(x, y)
    @shapes = [
      Square.new(x * PIXEL_SIZE, y * PIXEL_SIZE, PIXEL_SIZE, 'red'),
      Square.new(x * PIXEL_SIZE, (y + 1) * PIXEL_SIZE, PIXEL_SIZE, 'red'),
      Square.new((x + 1) * PIXEL_SIZE, y * PIXEL_SIZE, PIXEL_SIZE, 'red'),
      Square.new((x + 1) * PIXEL_SIZE, (y + 1) * PIXEL_SIZE, PIXEL_SIZE, 'red')
    ]
  end

  def update
    @shapes.each do |shape|
      shape.y += GRAVITY
    end
  end
end