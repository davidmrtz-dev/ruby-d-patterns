# frozen_string_literal: true

require_relative './button'

class Dialog
  def initialize
    @button = create_button
  end

  def render
    @button.render
  end

  def on_click
    @button.on_click
  end

  def create_button
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class WindowsDialog < Dialog
  def create_button
    WindowsButton.new
  end
end

class MacDialog < Dialog
  def create_button
    MacButton.new
  end
end
