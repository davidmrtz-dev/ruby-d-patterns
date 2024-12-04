# frozen_string_literal: true

require_relative 'shape'

class Circle < Shape
  def initialize(renderer, x, y, radius)
    super(renderer)
    @x, @y, @radius = x, y, radius
  end

  def draw
    @renderer.render_circle(@x, @y, @radius)
  end
end
