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

def main
  dialog = WindowsDialog.new
  dialog.render
  dialog.on_click

  dialog = HtmlDialog.new
  dialog.render
  dialog.on_click
end

main if __FILE__ == $PROGRAM_NAME
