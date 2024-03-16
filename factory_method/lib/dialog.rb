require_relative './button.rb'

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

class HtmlDialog < Dialog
  def create_button
    HtmlButton.new
  end
end

class WindowsDialog < Dialog
  def create_button
    WindowsButton.new
  end
end
