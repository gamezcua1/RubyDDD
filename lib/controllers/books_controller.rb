# frozen_string_literal: true

# The Products controller
class BooksController < BaseController
  get '/:id' do
    book = Books::GetBook.call(params['id'])
    book.to_json
  end

  get '/' do
    books = Books::GetBooks.call
    books.to_json
  end
end
