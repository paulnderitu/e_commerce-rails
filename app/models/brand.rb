class Brand < ActiveRecord::Base
  has_many :products, dependent: :destroy
  has_many :categories, dependent: :destroy
  validates :title, presence: true
  mount_uploader :avatar, PictureUploader
  acts_as_votable
  def score
    get_upvotes.size - get_downvotes.size
  end
end
