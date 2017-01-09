require 'gosu'

require_relative 'window'
require_relative 'world'
require_relative 'point'

PIXEL_SIZE = 30
GRAVITY = 1
ROWS = 20
COLS = 10
WIDTH = COLS * PIXEL_SIZE
HEIGHT = ROWS * PIXEL_SIZE
N = 4
WORLD = World.new

window = Window.new(WIDTH, HEIGHT)
window.show
