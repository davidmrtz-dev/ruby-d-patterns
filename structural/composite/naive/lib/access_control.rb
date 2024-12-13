# frozen_string_literal: true

class AccessControl
  attr_reader :user, :manager, :admin

  def initialize(user: nil, manager: nil, admin: nil)
    @user = user
    @manager = manager
    @admin = admin
  end

  def has_access_to?(role_type, resource, action)
    case role_type
    when :user
      user ? user.has_access_to?(resource, action) : false
    when :manager
      manager ? manager.has_access_to?(resource, action) : false
    when :admin
      admin ? admin.has_access_to?(resource, action) : false
    else
      false
    end
  end
end
