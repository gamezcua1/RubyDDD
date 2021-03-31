# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/namespace'

Dir.glob('./lib/{controllers,data_access}/*.rb').sort.each { |file| require file }

map('/api/v1') { run BaseController }
map('/api/v1') { run GetProducts }

