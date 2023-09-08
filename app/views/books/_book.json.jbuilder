json.extract! book, :id, :picture, :author, :isbn, :description, :price, :created_at, :updated_at
json.url book_url(book, format: :json)
