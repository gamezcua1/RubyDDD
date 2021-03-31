# frozen_string_literal: true

class GetProduct
  def initialize(product_id)
    @product_id = product_id
  end

  def call
    ProductCollection.find(@product_id).first
  end
end
