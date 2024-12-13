# frozen_string_literal: true

class Manager
  def access_to?(_resource, action)
    action == :read # Managers can only read any file
  end
end
