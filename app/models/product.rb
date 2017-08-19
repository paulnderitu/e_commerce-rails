class Product < ActiveRecord::Base
  belongs_to :brand

  validates :item, presence: true
end
