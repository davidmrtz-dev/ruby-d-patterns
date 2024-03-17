# frozen_string_literal: true

require_relative 'motos'

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
