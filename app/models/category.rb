class Category < ActiveRecord::Base
  validates :name, presence: true
  has_many :brands, dependent: :destroy
end
