# frozen_string_literal: true

# The Products controller
class ProductsController < BaseController
  get '/:id' do
    product = GetProduct.new(params['id']).call
    product.to_json
  end

  get '/' do
    [{ id: 1, name: 'Shampoo' }].to_json
  end
end
