# frozen_string_literal: true

require_relative 'shipping_decorator'

class ExpressShipping < ShippingDecorator
  def calculate
    super + 10
  end
end
