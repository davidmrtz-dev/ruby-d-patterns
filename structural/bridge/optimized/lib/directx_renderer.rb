# frozen_string_literal: true

require_relative 'renderer'

class DirectXRenderer < Renderer
  def render_circle(x, y, radius)
    puts "Rendering circle at (#{x}, #{y}) with radius #{radius} using DirectX"
  end

  def render_rectangle(x, y, width, height)
    puts "Rendering rectangle at (#{x}, #{y}) with width #{width} and height #{height} using DirectX"
  end
end
