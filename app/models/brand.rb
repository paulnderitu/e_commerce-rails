class Brand < ActiveRecord::Base
  has_many :products
  has_many :categories
  validates :title, presence: true
  mount_uploader :avatar, PictureUploader
end
