# !/usr/bin/ruby
# frozen_string_literal: true

require 'pry'
require_relative '../lib/dialog.rb'

def main
  dialog = WindowsDialog.new
  dialog.render
  dialog.on_click

  dialog = HtmlDialog.new
  dialog.render
  dialog.on_click
end

main if __FILE__ == $PROGRAM_NAME
