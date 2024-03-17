# frozen_string_literal: true

require_relative 'button'
require_relative 'checkbox'

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
