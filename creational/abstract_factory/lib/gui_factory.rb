# frozen_string_literal: true

require_relative 'button'
require_relative 'checkbox'

module GUIFactory
  def create_button
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def create_checkbox
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class WinFactory
  include GUIFactory

  def create_button
    WindowsButton.new
  end

  def create_checkbox
    WindowsCheckbox.new
  end
end

class MacFactory
  include GUIFactory

  def create_button
    MacButton.new
  end

  def create_checkbox
    MacCheckbox.new
  end
end
