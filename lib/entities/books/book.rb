# frozen_string_literal: true

require './lib/entities/entity.rb'

# The class Product Entity
# name: string
# price: int
# description: string
# created_at: date_time
class Book < Entity
  attr_accessor :name, :price, :description, :created_at

  def initialize(id: nil, name: nil, price: nil, description: nil, created_at: Time.now)
    @id = id
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
