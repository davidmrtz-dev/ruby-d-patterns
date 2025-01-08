# !/usr/bin/ruby
# frozen_string_literal: true

Dir[File.join(__dir__, '../lib/*.rb')].sort.each { |file| require_relative file }

def main
  base_shipping = BaseShipping.new(50)
  insured_shipping = InsuredShipping.new(base_shipping)
  express_insured_shipping = ExpressShipping.new(insured_shipping)
  final_shipping = RegionalTaxShipping.new(express_insured_shipping, :eu)

  puts final_shipping.calculate # 90
end

main if __FILE__ == $PROGRAM_NAME
