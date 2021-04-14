# frozen_string_literal: true

require './lib/entities/entity.rb'

# The class Product Entity
# name: string
# price: int
# description: string
# created_at: date_time
class Book < Entity
  attr_accessor :id, :name, :image_url, :description, :created_at

  def initialize(id: nil, name: nil, image_url: nil, description: nil, created_at: Time.now)
    @id = id
    @name = name
    @description = description
    @image_url = image_url
    @created_at = created_at

    validate :name, :presence
    validate :description, :presence
  end

  def to_h
    { name: name, description: description,
      image_url: image_url, created_at: created_at }
  end
end
