class Product < ActiveRecord::Base
  belongs_to :brand
  belongs_to :user
  has_many :order_goods
  validates :item, presence: true
  mount_uploader :picture, PictureUploader
  acts_as_votable
  def score
    get_upvotes.size - get_downvotes.size
  end
end
