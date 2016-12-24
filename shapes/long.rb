class Long
  attr_reader :shapes

  def initialize(x, y)
    @shapes = [
      Square.new(x * PIXEL_SIZE, y * PIXEL_SIZE, PIXEL_SIZE, 'blue'),
      Square.new(x * PIXEL_SIZE, (y + 1) * PIXEL_SIZE, PIXEL_SIZE, 'blue'),
      Square.new(x * PIXEL_SIZE, (y + 2) * PIXEL_SIZE, PIXEL_SIZE, 'blue'),
      Square.new(x * PIXEL_SIZE, (y + 3) * PIXEL_SIZE, PIXEL_SIZE, 'blue'),
    ]
  end

  def update
    @shapes.each do |shape|
      shape.y += GRAVITY
    end
  end
end
