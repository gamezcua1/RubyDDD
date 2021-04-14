# frozen_string_literal: true

module Books
  # Get book by id
  class GetBook
    def self.call(id, collection = BookCollection)
      new(id, collection).call
    end

    def initialize(id, collection = BookCollection)
      @id = id
      @collection = collection
    end

    def call
      @collection.find(@id).first
    end
  end
end
