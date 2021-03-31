# frozen_string_literal: true

class ProductCollection
  class << self
    def collection
      @collection ||= MongoClient.instance.client[:products]
    end

    def find(id)
      collection.find(_id: BSON::ObjectId(id))
    end
  end
end
