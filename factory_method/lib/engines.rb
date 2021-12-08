class Engine
  def process
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class ElectricEngine < Engine
  def process
    '{Result of the ElectricEngine}'
  end
end

class CombustionEngine < Engine
  def process
    '{Result of the CombustionEngine}'
  end
end

class HibridEngine < Engine
  def process
    '{Result of the HibridEngine}'
  end
end