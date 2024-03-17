# !/usr/bin/ruby
# frozen_string_literal: true

require_relative '../lib/gui_factory'

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
