# frozen_string_literal: true

# The class Product Entity
# name: string
# price: int
# description: string
# created_at: date_time
class Product < Entity
  attr_accessor :name, :price, :description, :created_at

  def initialize(name: nil, price: nil, description: nil, created_at: Time.now)
    @name = name
    @price = price
    @description = description
    @created_at = created_at

    validate :name, :presence
    validate :price, :presence
    validate :description, :presence
  end

  def to_h
    { name: name, price: price,
      description: description, created_at: created_at }
  end
end
