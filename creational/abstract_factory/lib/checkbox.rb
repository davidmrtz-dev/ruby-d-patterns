# frozen_string_literal: true

module Checkbox
  def render
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def on_change
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class MacCheckbox
  include Checkbox

  def render
    puts 'MacCheckbox render'
  end

  def on_change
    puts 'MacCheckbox on_change'
  end
end

class WindowsCheckbox
  include Checkbox

  def render
    puts 'WindowsCheckbox render'
  end

  def on_change
    puts 'WindowsCheckbox on_change'
  end
end
