# !/usr/bin/ruby
# frozen_string_literal: true

Dir[File.join(__dir__, '../lib/*.rb')].sort.each { |file| require_relative file }

def main
  calculator = ShippingCostCalculator.new(100)
  puts calculator.calculate # 100
  puts calculator.calculate(express: true) # 110
  puts calculator.calculate(insurance: true) # 120
  puts calculator.calculate(region: :us) # 105
  puts calculator.calculate(express: true, insurance: true, region: :eu) # 140
end

main if __FILE__ == $PROGRAM_NAME
