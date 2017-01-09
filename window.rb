require_relative 'score'
require_relative 'shape'
Dir["shapes/*.rb"].each { |file| require_relative file }

class Window < Gosu::Window
  def initialize(width, height)
    super(width, height, false, 100)
    self.caption = "Tetris"
    @score = Score.new
    @shapes = []
  end

  def button_down(id)
    case id
    when 4
      @shapes.last.move_left
    when 7
      @shapes.last.move_right
    when 21
      puts 'rotate'
    end
  end

  def update
    @score.value = WORLD.height
    if WORLD.height < ROWS
      @shapes << Shape.generate if @shapes.map(&:bottom?).all? || @shapes.empty?
      @shapes.map(&:update)
      WORLD.freeze(@shapes.last.points) if @shapes.last.bottom?
    else
      puts 'DEAD'
    end
  end

  def draw
    @score.draw
    @shapes.map(&:draw)
    WORLD.draw
  end
end
