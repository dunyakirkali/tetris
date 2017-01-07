require 'ruby2d'

require_relative 'object_factory'
require_relative 'world'
require_relative 'score'
require_relative 'point'

Dir["shapes/*.rb"].each { |file| require_relative file }

PIXEL_SIZE = 30
GRAVITY = 10
ROWS = 20
COLS = 10
WIDTH = COLS * PIXEL_SIZE
HEIGHT = ROWS * PIXEL_SIZE
N = 4
WORLD = World.new
SCORE = Score.new

set width: WIDTH, height: HEIGHT, title: "Tetris", fps: 30

shapes = []

on key: 'r' do
  unless shapes.last.nil?
    shapes.last.rotate
  end
end

on key: 'a' do
  unless shapes.last.nil?
    shapes.last.move_left
  end
end

on key: 'd' do
  unless shapes.last.nil?
    shapes.last.move_right
  end
end

update do
  SCORE.text.text = WORLD.height
  if WORLD.height < ROWS
    shapes << ObjectFactory.generate if shapes.map(&:bottom?).all? || shapes.empty?
    shapes.map(&:update)
    if shapes.last.bottom?
      WORLD.freeze(shapes.last.points)
      shapes.delete(shapes.last)
    end
  else
    puts 'DEAD'
  end
end

show
