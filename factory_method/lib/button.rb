# frozen_string_literal: true

module Button
  def render
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def on_click
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class MacButton
  include Button

  def render
    puts 'MacButton render'
  end

  def on_click
    puts 'MacButton on_click'
  end
end

class WindowsButton
  include Button

  def render
    puts 'WindowsButton render'
  end

  def on_click
    puts 'WindowsButton on_click'
  end
end
