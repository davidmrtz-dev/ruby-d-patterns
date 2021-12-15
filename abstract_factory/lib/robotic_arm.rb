class RoboticArm
  def pick_object
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def charge_from_panel(_collaborator)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class RoboticArmA1 < RoboticArm
  def pick_object
    'The result of the RoboticArm A1.'
  end

  def charge_from_panel(collaborator)
    result = collaborator.catch_light
    "The result of the A1 collaborating with the (#{result})"
  end
end

class RoboticArmA2 < RoboticArm
  def pick_object
    'The result of the RoboticArm A2.'
  end

  def charge_from_panel(collaborator)
    result = collaborator.catch_light
    "The result of the A2 collaborating with the (#{result})"
  end
end