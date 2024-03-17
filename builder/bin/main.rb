# !/usr/bin/ruby
# frozen_string_literal: true

module Builder
  def reset
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def set_seats
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def set_engine
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def set_trip_computer
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def set_gps
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def set_break_assist
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class MotoNakedBuilder
  include Builder

  def initialize
    reset
  end

  def reset
    @moto = MotoNaked.new
  end

  def set_seats
    @moto.add('seats')
  end

  def set_engine
    @moto.add('basic engine')
  end

  def set_trip_computer
    @moto.add('trip computer')
  end

  def set_gps
    @moto.add('ai gps')
  end

  def set_break_assist
    @moto.add('basic break assist')
  end

  def moto
    moto = @moto
    reset
    moto
  end
end

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

class MotoSportBuilder
  include Builder

  def initialize
    reset
  end

  def reset
    @moto = MotoSport.new
  end

  def set_seats
    @moto.add('premium seats')
  end

  def set_engine
    @moto.add('sport engine')
  end

  def set_trip_computer
    @moto.add('trip computer')
  end

  def set_gps
    @moto.add('premium gps')
  end

  def set_break_assist
    @moto.add('ai break assist')
  end

  def moto
    moto = @moto
    reset
    moto
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

class Director
  def build_naked_moto(builder)
    builder.set_seats
    builder.set_engine
    builder.set_trip_computer
  end

  def build_sport_moto(builder)
    builder.set_seats
    builder.set_engine
    builder.set_trip_computer
    builder.set_gps
    builder.set_break_assist
  end
end

def main
  director = Director.new
  builder = MotoNakedBuilder.new
  director.build_naked_moto(builder)
  builder.moto.list_parts

  builder = MotoSportBuilder.new
  director.build_sport_moto(builder)
  builder.moto.list_parts
end

main if __FILE__ == $PROGRAM_NAME
