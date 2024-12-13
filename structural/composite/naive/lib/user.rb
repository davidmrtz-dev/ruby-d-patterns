# frozen_string_literal: true

class User
  attr_reader :owned_resources

  def initialize(owned_resources)
    @owned_resources = owned_resources # Array of resources owned by the user
  end

  def has_access_to?(resource, action)
    case action
    when :read, :edit
      owned_resources.include?(resource) # Users can read/edit only their resources
    else
      false
    end
  end
end
