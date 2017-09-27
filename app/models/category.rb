class Category < ActiveRecord::Base
  validates :name, presence: true
  validates :brand_ids, presence: true
  has_and_belongs_to_many :brands
end
