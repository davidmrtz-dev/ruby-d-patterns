# !/usr/bin/ruby
# frozen_string_literal: true

# The GUIFactory interface declares a set of methods that return different
module GUIFactory
  def create_button
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def create_checkbox
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

# Each concrete factory extends the GUIFactory and is responsible for creating
class WinFactory
  include GUIFactory

  def create_button
    WindowsButton.new
  end

  def create_checkbox
    WindowsCheckbox.new
  end
end

# Each concrete factory extends the GUIFactory and is responsible for creating
class MacFactory
  include GUIFactory

  def create_button
    MacButton.new
  end

  def create_checkbox
    MacCheckbox.new
  end
end

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

# The Abstract Product interface declares a set of methods that the concrete
module Checkbox
  def render
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def on_change
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

# Each distinct product of a product family should have a base interface. All
class MacCheckbox
  include Checkbox

  def render
    puts 'MacCheckbox render'
  end

  def on_change
    puts 'MacCheckbox on_change'
  end
end

# Each distinct product of a product family should have a base interface. All
class WindowsCheckbox
  include Checkbox

  def render
    puts 'WindowsCheckbox render'
  end

  def on_change
    puts 'WindowsCheckbox on_change'
  end
end

# The client code works with factories and products only through abstract types:
class Application
  def initialize(factory)
    @factory = factory
  end

  def create_ui
    button = @factory.create_button
    checkbox = @factory.create_checkbox
    button.render
    checkbox.render
  end
end

# The application picks the factory type and creates it in runtime (usually at
# initialization stage), depending on the configuration or environment
# variables.
win_app = Application.new(WinFactory.new)
mac_app = Application.new(MacFactory.new)

win_app.create_ui
mac_app.create_ui
# Output:
# WindowsButton render
# WindowsCheckbox render
# MacButton render
# MacCheckbox render
# The client code works with factories and products only through abstract types:
# class Application
