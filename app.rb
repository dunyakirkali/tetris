require 'ruby2d'

require_relative 'object_factory'
Dir["shapes/*.rb"].each { |file| require_relative file }

GRAVITY = 2
ROWS = 20
COLS = 10
PIXEL_SIZE = 20
WIDTH = COLS * PIXEL_SIZE
HEIGHT = ROWS * PIXEL_SIZE

set width: WIDTH, height: HEIGHT, title: "Tetris", fps: 30

shapes = [
  Box.new(4, 4),
  Long.new(7, 4),
  LRight.new(2, 1),
  LLeft.new(9, 2),
  SRight.new(1, 14),
  SLeft.new(5, 12)
]

update do
  shapes.each(&:update)
end

show
