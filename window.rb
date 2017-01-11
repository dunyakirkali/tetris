require_relative 'world'
require_relative 'score'
require_relative 'shape'
Dir["shapes/*.rb"].each { |file| require_relative file }

class Window < Gosu::Window
  def initialize(width, height)
    super(width, height, false, 100)
    self.caption = "Tetris"
    ############ 1
    @score = Score.new
    ############
    @shapes = []
  end

  def button_down(id)
    case id
    when 4
      @shapes.last.move_left
    when 7
      @shapes.last.move_right
    end
  end

  def update
    ############ 1
    @score.value = World.instance.height
    ############
    if World.instance.height < ROWS
      @shapes << Shape.generate if @shapes.map(&:bottom?).all? || @shapes.empty?
      @shapes.map(&:update)
      World.instance.freeze(@shapes.last.points) if @shapes.last.bottom?
    else
      puts 'DEAD'
    end
  end

  def draw
    ############ 1
    @score.draw
    ############
    @shapes.map(&:draw)
    World.instance.draw
  end
end
