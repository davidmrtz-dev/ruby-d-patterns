# frozen_string_literal: true

class ShippingCostCalculator
  def initialize(base_cost)
    @base_cost = base_cost
  end

  def calculate(express: false, insurance: false, region: nil)
    cost = @base_cost
    cost += 10 if express
    cost += 20 if insurance
    cost += tax(region) if region
    cost
  end

  private

  def tax(region)
    case region
    when :us then 5
    when :eu then 10
    else 0
    end
  end
end
