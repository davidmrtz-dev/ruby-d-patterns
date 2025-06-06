# !/usr/bin/ruby
# frozen_string_literal: true

Dir[File.join(__dir__, '../lib/*.rb')].sort.each { |file| require_relative file }

def main
  opengl_circle = OpenGLCircle.new(10, 20, 15)
  directx_rectangle = DirectXRectangle.new(5, 5, 30, 40)

  opengl_circle.draw
  # Output: "Rendering circle at (10, 20) with radius 15 using OpenGL"
  directx_rectangle.draw
  # Output: "Rendering rectangle at (5, 5) with width 30 and height 40 using DirectX"
end

main if __FILE__ == $PROGRAM_NAME
# Output: "Rendering circle at (10, 20) with radius 15 using OpenGL"
# Output: "Rendering rectangle at (5, 5) with width 30 and height 40 using DirectX"
