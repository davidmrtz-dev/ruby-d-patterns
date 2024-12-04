# !/usr/bin/ruby
# frozen_string_literal: true

require_relative '../lib/shape_factory'
require_relative '../lib/drawing_app'

def main
  factory = ShapeFactory.new
  app = DrawingApp.new(factory)

  app.create_circle(10, 20, 5, 'red', 10, 45)
  app.create_circle(15, 25, 5, 'blue', 15, 90)
  app.create_circle(20, 30, 10, 'green', 20, 135)
  app.create_rectangle(5, 5, 10, 20, 'yellow', 5, 180)
  app.create_rectangle(15, 15, 10, 20, 'black', 10, 225)
  app.create_triangle(10, 10, 6, 8, 'purple', 15, 270)
  app.create_ellipse(20, 20, 10, 5, 'orange', 20, 315)

  app.render
end

main if __FILE__ == $PROGRAM_NAME
