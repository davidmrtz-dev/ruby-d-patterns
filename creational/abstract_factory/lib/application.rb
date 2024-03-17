# frozen_string_literal: true

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
