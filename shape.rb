class Shape
  def update
    return if bottom?
    @shapes.each do |shape|
      shape.y += GRAVITY
    end
  end

  def points
    shapes.map { |shape| Point.new(shape.x / PIXEL_SIZE, shape.y / PIXEL_SIZE) }
  end

  def bottom?
    !WORLD.check(points.map { |point| Point.new(point.x, point.y + 1) })
  end

  def move_left
    shapes.each { |shape| shape.x -= PIXEL_SIZE }
  end

  def move_right
    shapes.each { |shape| shape.x += PIXEL_SIZE }
  end
end
