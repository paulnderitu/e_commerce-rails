class Category < ActiveRecord::Base
  validates :name, presence: true
  has_many :brand_categories
  has_many :brands, through: :brand_categories
end
