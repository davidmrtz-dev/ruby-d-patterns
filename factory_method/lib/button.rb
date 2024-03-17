# frozen_string_literal: true

# A button interface that will be implemented by the concrete button classes
module Button
  def render
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def on_click
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

# Concrete Products provide various implementations of the Product interface.
class HtmlButton
  include Button

  def render
    puts 'HtmlButton render'
  end

  def on_click
    puts 'HtmlButton on_click'
  end
end

# Concrete Products provide various implementations of the Product interface.
class WindowsButton
  include Button

  def render
    puts 'WindowsButton render'
  end

  def on_click
    puts 'WindowsButton on_click'
  end
end
