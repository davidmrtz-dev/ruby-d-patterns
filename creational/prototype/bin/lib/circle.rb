# frozen_string_literal: true

require_relative 'shape'

class Circle < Shape
  def initialize(source)
    super(source)
    @radius = source.radius
  end

  def clone
    Circle.new(OpenStruct.new(x: @x, y: @y, radius: @radius, color: @color))
  end
end
