class Category < ActiveRecord::Base
  validates :name, presence: true
  has_many :brands_categories
  has_many :brands, through: :brands_categories
end
