class SolarPanel
  def catch_light
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class SolarPanelA1 < SolarPanel
  def catch_light
    'The result of the Solar Panel A1.'
  end
end

class SolarPanelA2 < SolarPanel
  def catch_light
    'The result of the Solar Panel A2.'
  end
end