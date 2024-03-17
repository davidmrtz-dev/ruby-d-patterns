# frozen_string_literal: true

class Shape
  def initialize(source)
    @x = source.x
    @y = source.y
    @color = source.color
  end

  def clone
    raise NotImplementedError, 'You should implement this method'
  end
end
