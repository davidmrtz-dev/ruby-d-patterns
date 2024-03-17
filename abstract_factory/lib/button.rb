# frozen_string_literal: true

# The Abstract Product interface declares a set of methods that the concrete
module Button
  def render
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def on_click
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

# Each distinct product of a product family should have a base interface. All
class MacButton
  include Button

  def render
    puts 'MacButton render'
  end

  def on_click
    puts 'MacButton on_click'
  end
end

# Each distinct product of a product family should have a base interface. All
class WindowsButton
  include Button

  def render
    puts 'WindowsButton render'
  end

  def on_click
    puts 'WindowsButton on_click'
  end
end
