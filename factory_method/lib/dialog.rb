# frozen_string_literal: true

require_relative './button.rb'

# The Creator
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

# Concrete Creators override the factory method in order to change the resulting product's type.
class WindowsDialog < Dialog
  def create_button
    WindowsButton.new
  end
end

# Concrete Creators override the factory method in order to change the resulting product's type.
class HtmlDialog < Dialog
  def create_button
    HtmlButton.new
  end
end
