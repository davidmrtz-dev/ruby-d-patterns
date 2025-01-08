# frozen_string_literal: true

require_relative 'shipping_decorator'

class InsuredShipping < ShippingDecorator
  def calculate
    super + 20
  end
end
