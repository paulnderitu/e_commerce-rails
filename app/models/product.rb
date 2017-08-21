class Product < ActiveRecord::Base
  belongs_to :brand
  belongs_to :user
  validates :item, presence: true
end
