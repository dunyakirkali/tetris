class World
  def initialize
    @grid = Hash.new
    for i in 0..COLS
      for j in 0..ROWS
        @grid[[i, j]] = false
      end
    end
  end

  def check(points)
    !points.map { |point| @grid[[point.x, point.y]] }.any? && points.map { |point| point.y < ROWS }.all?
  end

  def freeze(points)
    points.each do |point|
      Square.new(point.x * PIXEL_SIZE, point.y * PIXEL_SIZE, PIXEL_SIZE, 'white')
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
end
