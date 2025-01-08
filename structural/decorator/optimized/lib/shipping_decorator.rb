# frozen_string_literal: true

class ShippingDecorator
  def initialize(component)
    @component = component
  end

  def calculate
    @component.calculate
  end
end
