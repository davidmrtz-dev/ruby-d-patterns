# frozen_string_literal: true

require_relative 'role'

# Composite role: A higher-level role that delegates checks to its sub-roles
class CompositeRole < Role
  attr_reader :sub_roles

  def initialize
    super()
    @sub_roles = []
  end

  def add_role(role)
    sub_roles << role
  end

  def access_to?(resource, action)
    # Any sub-role granting access results in true
    sub_roles.any? { |role| role.access_to?(resource, action) }
  end
end
