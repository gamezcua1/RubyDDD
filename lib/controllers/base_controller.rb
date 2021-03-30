# frozen_string_literal: true

require 'sinatra'
require 'sinatra/namespace'
require 'sinatra/base'

# Returns a products array
# '/products'
class BaseController < Sinatra::Base
  before do
    content_type 'application/json'
  end

  get '/' do
    { hello: 'world' }.to_json
  end

  get '/2' do
    { hello: 3 }.to_json
  end
end
