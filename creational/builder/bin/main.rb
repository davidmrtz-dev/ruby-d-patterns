# !/usr/bin/ruby
# frozen_string_literal: true

require_relative '../lib/builders'

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

# Output:
# Moto Naked parts: seats, basic engine, trip computer
# Moto Sport parts: premium seats, sport engine, trip computer, premium gps, ai break assist
