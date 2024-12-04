# frozen_string_literal: true

class DirectXCircle
  def initialize(x, y, radius)
    @x, @y, @radius = x, y, radius
  end

  def draw
    puts "Rendering circle at (#{@x}, #{@y}) with radius #{@radius} using DirectX"
  end
end
