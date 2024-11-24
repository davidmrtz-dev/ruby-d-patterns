# !/usr/bin/ruby
# frozen_string_literal: true

Dir[File.join(__dir__, '../lib/*.rb')].each { |file| require_relative file }
require 'pry'

def main
  paypal_gateway = PayPalGateway.new
  payment_processor = PaymentProcessor.new(paypal_gateway)
  puts payment_processor.process_payment(100)
  # Output: "Paying 100 with PayPal"

  stripe_gateway = StripeGateway.new
  stripe_adapter = StripeAdapter.new(stripe_gateway)
  payment_processor = PaymentProcessor.new(stripe_adapter)
  puts payment_processor.process_payment(100)
  # Output: "Charging 100.0 with Stripe"
end

main if __FILE__ == $PROGRAM_NAME
