# frozen_string_literal: true

require 'sinatra'
require 'sinatra/namespace'

get '/' do
  { hello: "world" }.to_json
end

namespace '/api/v1' do
  before do
    content_type 'application/json'
  end

  get '/products' do
    [{id: 1, name: 'Shampoo'}].to_json
  end
end
