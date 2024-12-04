# frozen_string_literal: true

require_relative 'shape'

class Rectangle < Shape
  def initialize(renderer, x, y, width, height)
    super(renderer)
    @x, @y, @width, @height = x, y, width, height
  end

  def draw
    @renderer.render_rectangle(@x, @y, @width, @height)
  end
end
