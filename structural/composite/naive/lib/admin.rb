# frozen_string_literal: true

class Admin
  def access_to?(_resource, action)
    %i[read edit].include?(action) # Admins can read and edit any file
  end
end
