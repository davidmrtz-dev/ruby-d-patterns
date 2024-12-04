# frozen_string_literal: true

class Renderer
  def render_circle(x, y, radius)
    raise NotImplementedError, 'Subclasses must implement this method'
  end

  def render_rectangle(x, y, width, height)
    raise NotImplementedError, 'Subclasses must implement this method'
  end
end
