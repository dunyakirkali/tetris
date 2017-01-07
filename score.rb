class Score
  attr_accessor :text

  def initialize
    @text = Text.new(0, 0, 50, '0', 'Arial', 'red')
    @text.color = "blue"
    @text.text = "blue"
  end
end
