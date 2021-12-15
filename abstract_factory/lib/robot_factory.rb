require_relative './robotic_arm.rb'
require_relative './solar_panel.rb'
require_relative './printer.rb'

class RobotFactory
  def create_smart_solar_panel
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def create_robotic_arm
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def create_3d_printer
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class RobotPremiumFactory < RobotFactory
  def create_smart_solar_panel
    SolarPanelA1.new
  end

  def create_robotic_arm
    RoboticArmA1.new
  end

  def create_3d_printer
    PrinterA1.new
  end
end

class RobotBasicFactory < RobotFactory
  def create_smart_solar_panel
    SolarPanelA2.new
  end

  def create_robotic_arm
    RoboticArmA2.new
  end

  def create_3d_printer
    PrinterA2.new
  end
end