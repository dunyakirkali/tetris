require 'gosu'

ROWS = 20
COLS = 10
PIXEL_SIZE = 30
GRAVITY = 1
WIDTH = COLS * PIXEL_SIZE
HEIGHT = ROWS * PIXEL_SIZE
N = 4

require_relative 'window'
require_relative 'point'

window = Window.new(WIDTH, HEIGHT)
window.show
