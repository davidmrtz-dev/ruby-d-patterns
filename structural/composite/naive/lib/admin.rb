# frozen_string_literal: true

class Admin
  def has_access_to?(resource, action)
    [:read, :edit].include?(action) # Admins can read and edit any file
  end
end
