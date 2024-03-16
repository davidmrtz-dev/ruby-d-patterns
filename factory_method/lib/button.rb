module Button
  def render
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def on_click
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class HtmlButton
  include Button

  def render
    puts 'HtmlButton render'
  end

  def on_click
    puts 'HtmlButton on_click'
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
