# frozen_string_literal: true

require_relative 'particles'

# Extrinsic properties container class
# This class holds the extrinsic properties of the particle object
class ParticleContext
  attr_reader :particle, :x, :y, :color, :speed, :direction

  def initialize(particle, x, y, color, speed, direction)
    @particle = particle
    @x = x
    @y = y
    @color = color
    @speed = speed
    @direction = direction
  end

  def render
    @particle.render(@x, @y, @color, @speed, @direction)
  end
end
