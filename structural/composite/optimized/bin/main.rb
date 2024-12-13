# !/usr/bin/ruby
# frozen_string_literal: true

Dir[File.join(__dir__, '../lib/*.rb')].sort.each { |file| require_relative file }

# rubocop:disable Metrics/AbcSize
def main
  # Resources
  file1 = 'file1.txt'
  file2 = 'file2.txt'

  # Users
  user1 = User.new([file1]) # User owns file1

  # Composite roles
  manager_role = Manager.new
  admin_role = Admin.new

  # Hierarchy
  composite = CompositeRole.new
  composite.add_role(manager_role)
  composite.add_role(admin_role)
  composite.add_role(user1)

  # Access Checks
  puts composite.access_to?(file1, :read) # true (User1 or Manager/Admin can read)
  puts composite.access_to?(file2, :read) # true (Manager/Admin can read any file)
  puts composite.access_to?(file1, :edit) # true (Admin or User1 can edit file1)
  puts composite.access_to?(file2, :edit) # true (Admin can edit any file)
  puts user1.access_to?(file2, :read) # false (User1 does not own file2)
end
# rubocop:enable Metrics/AbcSize

main if __FILE__ == $PROGRAM_NAME
