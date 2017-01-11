class World < Gosu::Window
  def initialize
    @grid = Hash.new
    @color = 0xffffffff
    for i in 0..COLS
      for j in 0..ROWS
        @grid[[i, j]] = false
      end
    end
  end

  @@instance = World.new

  def self.instance
    return @@instance
  end

  def check(points)
    !points.map { |point| @grid[[point.x, point.y]] }.any? && points.map { |point| point.y <= ROWS }.all?
  end

  def freeze(points)
    points.each do |point|
      @grid[[point.x, point.y]] = true
    end
  end

  def height
    count = 0
    (ROWS).downto(0).each do |j|
      row = []
      for i in 0..COLS
        row << @grid[[i, j]]
      end
      count += 1 if row.any?
      next unless row.any?
    end
    count
  end

  def draw
    for i in 0..COLS
      for j in 0..ROWS
        if @grid[[i, j]]
          draw_quad(
            i * PIXEL_SIZE, j * PIXEL_SIZE, @color,
            (i + 1) * PIXEL_SIZE, j * PIXEL_SIZE, @color,
            i * PIXEL_SIZE, (j - 1) * PIXEL_SIZE, @color,
            (i + 1) * PIXEL_SIZE, (j - 1) * PIXEL_SIZE, @color, 0
          )
        end
      end
    end
  end
end
