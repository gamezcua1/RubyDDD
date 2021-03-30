# frozen_string_literal: true

# Returns a products array
class GetProducts < BaseController
  get '/products' do
    [{ id: 1, name: 'Shampoo' }].to_json
  end
end
