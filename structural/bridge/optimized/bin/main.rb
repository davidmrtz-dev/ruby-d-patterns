# !/usr/bin/ruby
# frozen_string_literal: true

Dir[File.join(__dir__, '../lib/*.rb')].sort.each { |file| require_relative file }

def main
  opengl_renderer = OpenGLRenderer.new
  directx_renderer = DirectXRenderer.new

  circle = Circle.new(opengl_renderer, 10, 20, 15)
  rectangle = Rectangle.new(directx_renderer, 5, 5, 30, 40)

  circle.draw
  # Output: "Rendering circle at (10, 20) with radius 15 using OpenGL"

  rectangle.draw
  # Output: "Rendering rectangle at (5, 5) with width 30 and height 40 using DirectX"
end

main if __FILE__ == $PROGRAM_NAME
# Output: "Rendering circle at (10, 20) with radius 15 using OpenGL"
# Output: "Rendering rectangle at (5, 5) with width 30 and height 40 using DirectX"
