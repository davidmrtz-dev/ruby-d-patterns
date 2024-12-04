# frozen_string_literal: true

# Factory Flyweight to create and manage particle instances

require_relative 'particles'

class ShapeFactory
  def initialize
    @circles = {}
    @rectangles = {}
    @triangles = {}
    @ellipses = {}
  end

  def get_circle(radius)
    @circles[radius] ||= Circle.new(radius)
  end

  def get_rectangle(width, height)
    @rectangles[[width, height]] ||= Rectangle.new(width, height)
  end

  def get_triangle(base, height)
    @triangles[[base, height]] ||= Triangle.new(base, height)
  end

  def get_ellipse(radius_x, radius_y)
    @ellipses[[radius_x, radius_y]] ||= Ellipse.new(radius_x, radius_y)
  end
end
