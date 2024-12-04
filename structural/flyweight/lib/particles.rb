# frozen_string_literal: true

# Particle abstract class and its concrete implementations
class Particle
  def render(x, y, color, speed, direction)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

# Concrete Particle classes with intrinsic state
class Circle < Particle
  def initialize(radius)
    super
    @radius = radius
  end

  def render(x, y, color, speed, direction)
    puts "Rendering Circle at (#{x}, #{y}) with radius #{@radius}, color #{color}, speed #{speed}, direction #{direction}"
  end
end

class Rectangle < Particle
  def initialize(width, height)
    super
    @width = width
    @height = height
  end

  def render(x, y, color, speed, direction)
    puts "Rendering Rectangle at (#{x}, #{y}) with dimensions #{@width}x#{@height}, color #{color}, speed #{speed}, direction #{direction}"
  end
end

class Triangle < Particle
  def initialize(base, height)
    super
    @base = base
    @height = height
  end

  def render(x, y, color, speed, direction)
    puts "Rendering Triangle at (#{x}, #{y}) with base #{@base} and height #{@height}, color #{color}, speed #{speed}, direction #{direction}"
  end
end

class Ellipse < Particle
  def initialize(radius_x, radius_y)
    super
    @radius_x = radius_x
    @radius_y = radius_y
  end

  def render(x, y, color, speed, direction)
    puts "Rendering Ellipse at (#{x}, #{y}) with radii #{@radius_x}x#{@radius_y}, color #{color}, speed #{speed}, direction #{direction}"
  end
end
