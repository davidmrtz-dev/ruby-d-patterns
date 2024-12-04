# !/usr/bin/ruby
# frozen_string_literal: true

require_relative '../lib/dialog'

def main
  dialog = WindowsDialog.new
  dialog.render
  dialog.on_click

  dialog = MacDialog.new
  dialog.render
  dialog.on_click
end

main if __FILE__ == $PROGRAM_NAME
