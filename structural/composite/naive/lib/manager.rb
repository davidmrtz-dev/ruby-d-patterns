# frozen_string_literal: true

class Manager
  def has_access_to?(resource, action)
    action == :read # Managers can only read any file
  end
end
