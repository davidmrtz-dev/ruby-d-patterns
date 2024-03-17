# !/usr/bin/ruby
# frozen_string_literal: true

require 'ostruct'
require_relative 'lib/rectangle'
require_relative 'lib/circle'

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
