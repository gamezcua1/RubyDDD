# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/namespace'

Dir.glob('./lib/{controllers,data_access,entities,use_cases}/**/**.rb').sort.each { |file| require file }

map('/api/v1') { run BaseController }
map('/api/v1/products') { run ProductsController }

puts GetProduct.new('606488f6f4013ce9aae3b91e').call
