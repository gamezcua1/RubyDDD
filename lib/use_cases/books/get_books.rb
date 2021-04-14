# frozen_string_literal: true

module Books
  # Retreives a list of books in the db
  class GetBooks
    def self.call(collection = BookCollection)
      new(collection).call
    end

    def initialize(collection = BookCollection)
      @collection = collection
    end

    def call
      @collection.all.map { |b| b }
    end
  end
end
