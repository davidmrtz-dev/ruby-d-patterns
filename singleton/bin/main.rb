# !/usr/bin/ruby
# frozen_string_literal: true

require_relative 'lib/database'

def main
  database = Database.instance
  database2 = Database.instance

  puts 'Are the instances the same?'
  puts database.equal?(database2)

  puts "Database instance id: #{database.object_id}"
  puts "Database2 instance id: #{database2.object_id}"
end

main if __FILE__ == $PROGRAM_NAME
