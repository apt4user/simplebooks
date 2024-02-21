class Subcategory < ApplicationRecord
  belongs_to :category
  has_many :books
  accepts_nested_attributes_for :books
end
