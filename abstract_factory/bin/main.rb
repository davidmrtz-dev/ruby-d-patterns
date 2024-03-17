# !/usr/bin/ruby
# frozen_string_literal: true

require_relative '../lib/gui_factory'
require_relative '../lib/application'

def main
  op_system = 'mac'

  if op_system == 'win'
    factory = WinFactory.new
  else
    factory = MacFactory.new
  end

  app = Application.new(factory)
  app.create_ui
end

main if __FILE__ == $PROGRAM_NAME
