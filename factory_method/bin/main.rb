# !/usr/bin/ruby
# frozen_string_literal: true

require 'pry'
require_relative '../lib/car_creators.rb'

def client_code(car_creator)
  print "#{car_creator.drive}"
end

client_code(ElectricCarCreator.new)
puts '\n'
client_code(CombustionCarCreator.new)
puts '\n'
client_code(HibridCarCreator.new)