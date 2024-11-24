class StripeGateway
  def charge(amount_in_cents)
    "Charging #{amount_in_cents / 100.0} with Stripe"
  end
end
