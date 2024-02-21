class Item < ApplicationRecord
  belongs_to :book
  belongs_to :cart

  def total
    book.book_price * quantity
  end
end
