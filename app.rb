require 'ruby2d'

ROWS = 20
COLS = 10
PIXEL_SIZE = 20
WIDTH = COLS * PIXEL_SIZE
HEIGHT = ROWS * PIXEL_SIZE

set width: WIDTH, height: HEIGHT, title: "Tetris", fps: 30

pos_x = 4
pos_y = 4

# Square
Square.new(pos_x * PIXEL_SIZE, pos_y * PIXEL_SIZE, PIXEL_SIZE, 'red')
Square.new(pos_x * PIXEL_SIZE, (pos_y + 1) * PIXEL_SIZE, PIXEL_SIZE, 'red')
Square.new((pos_x + 1) * PIXEL_SIZE, pos_y * PIXEL_SIZE, PIXEL_SIZE, 'red')
Square.new((pos_x + 1) * PIXEL_SIZE, (pos_y + 1) * PIXEL_SIZE, PIXEL_SIZE, 'red')

pos_x = 7
pos_y = 4

# Long
Square.new(pos_x * PIXEL_SIZE, pos_y * PIXEL_SIZE, PIXEL_SIZE, 'blue')
Square.new(pos_x * PIXEL_SIZE, (pos_y + 1) * PIXEL_SIZE, PIXEL_SIZE, 'blue')
Square.new(pos_x * PIXEL_SIZE, (pos_y + 2) * PIXEL_SIZE, PIXEL_SIZE, 'blue')
Square.new(pos_x * PIXEL_SIZE, (pos_y + 3) * PIXEL_SIZE, PIXEL_SIZE, 'blue')

pos_x = 2
pos_y = 1

# L Right
Square.new(pos_x * PIXEL_SIZE, pos_y * PIXEL_SIZE, PIXEL_SIZE, 'green')
Square.new(pos_x * PIXEL_SIZE, (pos_y + 1) * PIXEL_SIZE, PIXEL_SIZE, 'green')
Square.new(pos_x * PIXEL_SIZE, (pos_y + 2) * PIXEL_SIZE, PIXEL_SIZE, 'green')
Square.new((pos_x + 1) * PIXEL_SIZE, (pos_y + 2) * PIXEL_SIZE, PIXEL_SIZE, 'green')

pos_x = 9
pos_y = 2

# L Left
Square.new(pos_x * PIXEL_SIZE, pos_y * PIXEL_SIZE, PIXEL_SIZE, 'navy')
Square.new(pos_x * PIXEL_SIZE, (pos_y + 1) * PIXEL_SIZE, PIXEL_SIZE, 'navy')
Square.new(pos_x * PIXEL_SIZE, (pos_y + 2) * PIXEL_SIZE, PIXEL_SIZE, 'navy')
Square.new((pos_x - 1) * PIXEL_SIZE, (pos_y + 2) * PIXEL_SIZE, PIXEL_SIZE, 'navy')

pos_x = 1
pos_y = 15

# S Right
Square.new(pos_x * PIXEL_SIZE, pos_y * PIXEL_SIZE, PIXEL_SIZE, 'green')
Square.new(pos_x * PIXEL_SIZE, (pos_y + 1) * PIXEL_SIZE, PIXEL_SIZE, 'green')
Square.new((pos_x + 1) * PIXEL_SIZE, (pos_y + 1) * PIXEL_SIZE, PIXEL_SIZE, 'green')
Square.new((pos_x + 1) * PIXEL_SIZE, (pos_y + 2) * PIXEL_SIZE, PIXEL_SIZE, 'green')

pos_x = 5
pos_y = 12

# S Left
Square.new(pos_x * PIXEL_SIZE, pos_y * PIXEL_SIZE, PIXEL_SIZE, 'navy')
Square.new(pos_x * PIXEL_SIZE, (pos_y + 1) * PIXEL_SIZE, PIXEL_SIZE, 'navy')
Square.new((pos_x - 1) * PIXEL_SIZE, (pos_y + 1) * PIXEL_SIZE, PIXEL_SIZE, 'navy')
Square.new((pos_x - 1) * PIXEL_SIZE, (pos_y + 2) * PIXEL_SIZE, PIXEL_SIZE, 'navy')

show
