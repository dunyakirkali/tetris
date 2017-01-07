class ObjectFactory
  def self.generate
    case rand(5)
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
end
