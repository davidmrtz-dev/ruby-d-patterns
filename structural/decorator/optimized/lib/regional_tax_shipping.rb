# frozen_string_literal: true

require_relative 'shipping_decorator'

class RegionalTaxShipping < ShippingDecorator
  def initialize(component, region)
    super(component)
    @region = region
  end

  def calculate
    super + tax
  end

  private

  def tax
    case @region
    when :us then 5
    when :eu then 10
    else 0
    end
  end
end
