require 'ruby2d'

ROWS = 20
COLS = 10
PIXEL_SIZE = 20
WIDTH = COLS * PIXEL_SIZE
HEIGHT = ROWS * PIXEL_SIZE

set width: WIDTH, height: HEIGHT, title: "Tetris", fps: 30

Square.new(rand(COLS) * PIXEL_SIZE, rand(ROWS) * PIXEL_SIZE, PIXEL_SIZE, 'red')

show
