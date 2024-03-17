# frozen_string_literal: true

class MotoNaked
  def initialize
    @parts = []
  end

  def add(part)
    @parts << part
  end

  def list_parts
    puts "Moto Naked parts: #{@parts.join(', ')}"
  end
end

class MotoSport
  def initialize
    @parts = []
  end

  def add(part)
    @parts << part
  end

  def list_parts
    puts "Moto Sport parts: #{@parts.join(', ')}"
  end
end
