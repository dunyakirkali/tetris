class Score
  attr_accessor :value

  def initialize
    @font = Gosu::Font.new(50)
    @value = 0
  end

  def draw
    @font.draw(@value.to_s, 10, 10, 0, 1.0, 1.0, 0xff_ffffff)
  end
end
