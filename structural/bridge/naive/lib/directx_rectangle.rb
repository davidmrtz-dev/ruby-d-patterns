# frozen_string_literal: true

class DirectXRectangle
  def initialize(x, y, width, height)
    @x, @y, @width, @height = x, y, width, height
  end

  def draw
    puts "Rendering rectangle at (#{@x}, #{@y}) with width #{@width} and height #{@height} using DirectX"
  end
end
