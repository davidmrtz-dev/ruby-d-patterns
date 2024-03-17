# frozen_string_literal: true

class Database
  def self.instance
    @instance ||= new
  end

  private_class_method :new
end
