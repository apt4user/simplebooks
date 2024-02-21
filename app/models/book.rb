class Book < ApplicationRecord
  has_many :pictures
  has_many :author_books
  has_many :authors, through: :author_books
  has_many :comments, as: :commentable
  accepts_nested_attributes_for :pictures
  accepts_nested_attributes_for :authors
  accepts_nested_attributes_for :comments
end
