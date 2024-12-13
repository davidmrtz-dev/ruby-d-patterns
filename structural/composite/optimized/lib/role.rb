# frozen_string_literal: true

# Define a common interface for all entities
class Role
  def access_to?(resource, action)
    raise NotImplementedError, 'Subclasses must implement `has_access_to?`'
  end
end
