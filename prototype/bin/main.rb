# !/usr/bin/ruby
# frozen_string_literal: true

require 'ostruct'

class Shape
  def initialize(source)
    @x = source.x
    @y = source.y
    @color = source.color
  end

  def clone
    raise NotImplementedError, 'You should implement this method'
  end
end

class Rectangle < Shape
  def initialize(source)
    super(source)
    @width = source.width
    @height = source.height
  end

  def clone
    Rectangle.new(OpenStruct.new(x: @x, y: @y, width: @width, height: @height, color: @color))
  end
end

class Circle < Shape
  def initialize(source)
    super(source)
    @radius = source.radius
  end

  def clone
    Circle.new(OpenStruct.new(x: @x, y: @y, radius: @radius, color: @color))
  end
end

def main
  shapes = []
  shapes.push(Rectangle.new(OpenStruct.new(x: 10, y: 20, width: 50, height: 60, color: 'red')))
  shapes.push(Circle.new(OpenStruct.new(x: 10, y: 20, radius: 50, color: 'blue')))

  shapes_copy = []
  shapes.each do |shape|
    shapes_copy.push(shape.clone)
  end

  puts 'Shapes:'
  puts shapes
  puts 'Shapes copy:'
  puts shapes_copy
end

main if __FILE__ == $PROGRAM_NAME
