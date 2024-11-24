class PaymentProcessor
  def initialize(payment_gateway)
    @payment_gateway = payment_gateway
  end

  def process_payment(amount)
    @payment_gateway.pay(amount)
  end
end
