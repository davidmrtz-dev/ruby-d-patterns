# frozen_string_literal: true

# Application that uses the Flyweight pattern

require_relative 'particle_context'

class DrawingApp
  def initialize(factory)
    @factory = factory
    @shapes = [] # Almacena las formas y sus contextos
  end

  def create_circle(x, y, radius, color, speed, direction)
    circle = @factory.get_circle(radius) # Obtiene (o crea) una instancia reutilizable de Circle
    @shapes << ParticleContext.new(circle, x, y, color, speed, direction)
  end

  def create_rectangle(x, y, width, height, color, speed, direction)
    rectangle = @factory.get_rectangle(width, height) # Obtiene (o crea) una instancia reutilizable de Rectangle
    @shapes << ParticleContext.new(rectangle, x, y, color, speed, direction)
  end

  def create_triangle(x, y, base, height, color, speed, direction)
    triangle = @factory.get_triangle(base, height) # Obtiene (o crea) una instancia reutilizable de Triangle
    @shapes << ParticleContext.new(triangle, x, y, color, speed, direction)
  end

  def create_ellipse(x, y, radius_x, radius_y, color, speed, direction)
    ellipse = @factory.get_ellipse(radius_x, radius_y) # Obtiene (o crea) una instancia reutilizable de Ellipse
    @shapes << ParticleContext.new(ellipse, x, y, color, speed, direction)
  end

  def render
    @shapes.each(&:render)
  end
end
