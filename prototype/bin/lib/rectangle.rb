# frozen_string_literal: true

require_relative 'shape'

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
