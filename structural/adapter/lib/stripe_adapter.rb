# frozen_string_literal: true

class StripeAdapter
  def initialize(stripe_gateway)
    @stripe_gateway = stripe_gateway
  end

  def pay(amount)
    amount_in_cents = (amount * 100).to_i
    @stripe_gateway.charge(amount_in_cents)
  end
end
