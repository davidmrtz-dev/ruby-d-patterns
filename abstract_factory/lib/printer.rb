class Printer
  def print_object
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class PrinterA1 < Printer
  def print_object
    'The result of the 3d Printer A1'
  end
end

class PrinterA2 < Printer
  def print_object
    'The result of the 3d Printer A2'
  end
end