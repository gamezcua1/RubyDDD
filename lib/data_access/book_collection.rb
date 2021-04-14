# frozen_string_literal: true

# Product queries
class BookCollection
  class << self
    def collection
      @collection ||= MongoClient.instance.client[:products]
    end

    def find(id)
      collection.find(_id: BSON::ObjectId(id))
    end

    def all
      collection.find
    end
  end
end
