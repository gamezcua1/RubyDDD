# frozen_string_literal: true

# Entity class which contains helpers for all the Entities
class Entity
  protected

  def validate(name, type)
    send("validate_#{type}", name)
  end

  def validate_presence(name)
    raise "#{name.to_s.capitalize} cannot be null" unless send(name)
  end
end
