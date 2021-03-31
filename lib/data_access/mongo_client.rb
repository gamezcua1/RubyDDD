# frozen_string_literal: true

require 'mongo'
require 'singleton'

# Mongo Client
class MongoClient
  include Singleton

  def client
    @client ||= Mongo::Client.new(['127.0.0.1:27017'], database: 'rubyddd')
  end
end
