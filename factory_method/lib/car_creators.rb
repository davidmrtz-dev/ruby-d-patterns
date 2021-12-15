require_relative './engines.rb'

class CarCreator
  def factory_method
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def create
    engine = factory_method
    "#{engine.process}"
  end
end

class ElectricCarCreator < CarCreator
  def factory_method
    ElectricEngine.new
  end
end

class CombustionCarCreator < CarCreator
  def factory_method
    CombustionEngine.new
  end
end

class HibridCarCreator < CarCreator
  def factory_method
    HibridEngine.new
  end
end