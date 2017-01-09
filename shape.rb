class Shape < Gosu::Window
  attr_accessor :points

  def self.generate
    case rand(6)
    when 0
      Box.new(rand(COLS - 1), 0)
    when 1
      Long.new(rand(COLS), 0)
    when 2
      LLeft.new(rand(COLS - 1), 0)
    when 3
      LRight.new(rand(COLS - 1), 0)
    when 4
      SLeft.new(rand(COLS - 1), 0)
    when 5
      SRight.new(rand(COLS - 1), 0)
    end
  end

  def draw
    @points.each do |point|
      draw_quad(
        point.x * PIXEL_SIZE, point.y * PIXEL_SIZE, @color,
        (point.x + 1) * PIXEL_SIZE, point.y * PIXEL_SIZE, @color,
        point.x * PIXEL_SIZE, (point.y - 1) * PIXEL_SIZE, @color,
        (point.x + 1) * PIXEL_SIZE, (point.y - 1) * PIXEL_SIZE, @color, 0
      )
    end
  end

  def update
    return if bottom?
    @points.each { |point| point.y += GRAVITY }
  end

  def bottom?
    !WORLD.check(@points.map { |point| Point.new(point.x, point.y + 1) })
  end

  def move_left
    @points.each { |point| point.x -= 1 }
  end

  def move_right
    @points.each { |point| point.x += 1 }
  end
end
