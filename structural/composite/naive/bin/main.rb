# !/usr/bin/ruby
# frozen_string_literal: true

Dir[File.join(__dir__, '../lib/*.rb')].sort.each { |file| require_relative file }

def main
  # Resources
  file1 = 'file1.txt'
  file2 = 'file2.txt'

  # Roles
  user1 = User.new([file1]) # User owns file1
  manager_role = Manager.new
  admin_role = Admin.new

  # Access Control
  access_control = AccessControl.new(user: user1, manager: manager_role, admin: admin_role)

  # Access Checks
  puts access_control.access_to?(:user, file1, :read)    # true (User1 owns file1)
  puts access_control.access_to?(:user, file2, :read)    # false (User1 does not own file2)
  puts access_control.access_to?(:manager, file2, :read) # true (Manager can read any file)
  puts access_control.access_to?(:admin, file2, :edit)   # true (Admin can edit any file)
  puts access_control.access_to?(:admin, file1, :edit)   # true (Admin can edit any file)
end

main if __FILE__ == $PROGRAM_NAME
