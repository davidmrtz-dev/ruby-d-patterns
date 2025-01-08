# frozen_string_literal: true

class BaseShipping
  def initialize(base_cost)
    @base_cost = base_cost
  end

  def calculate
    @base_cost
  end
end
