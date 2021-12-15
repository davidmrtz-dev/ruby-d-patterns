# !/usr/bin/ruby
# frozen_string_literal: true

require 'pry'
require_relative '../lib/robot_factory.rb'

def client_code(factory)
  printer = factory.create_3d_printer
  smart_solar_panel = factory.create_smart_solar_panel
  robotic_arm = factory.create_robotic_arm

  puts robotic_arm.pick_object.to_s
  puts smart_solar_panel.catch_light.to_s
  puts robotic_arm.charge_from_panel(smart_solar_panel).to_s
  puts printer.print_object.to_s
end

puts 'Client: Testing client code with the first factory type:'
client_code(RobotPremiumFactory.new)

puts "\n"

puts 'Client: Testing the same client code with the second factory type:'
client_code(RobotBasicFactory.new)
