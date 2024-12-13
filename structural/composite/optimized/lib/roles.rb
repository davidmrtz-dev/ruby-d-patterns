# frozen_string_literal: true

require_relative 'role'

# Leaf role: A user with specific permissions
class User < Role
  attr_reader :owned_resources

  def initialize(owned_resources)
    super()
    @owned_resources = owned_resources # Array of resources owned by the user
  end

  def access_to?(resource, action)
    case action
    when :read, :edit
      owned_resources.include?(resource) # Users can read/edit only their resources
    else
      false
    end
  end
end

# Specific roles: Manager and Admin
class Manager < Role
  def access_to?(_resource, action)
    action == :read # Managers can only read any file
  end
end

class Admin < Role
  def access_to?(_resource, action)
    %i[read edit].include?(action) # Admins can read and edit any file
  end
end
