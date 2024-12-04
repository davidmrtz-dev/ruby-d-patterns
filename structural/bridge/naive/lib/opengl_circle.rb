# frozen_string_literal: true

class OpenGLCircle
  def initialize(x, y, radius)
    @x, @y, @radius = x, y, radius
  end

  def draw
    puts "Rendering circle at (#{@x}, #{@y}) with radius #{@radius} using OpenGL"
  end
end
