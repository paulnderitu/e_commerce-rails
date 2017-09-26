class Brand < ActiveRecord::Base
  has_and_belongs_to_many :students

  has_many :products, dependent: :destroy
  has_many :brand_categories
  has_many :categories, through: :brand_categories
  validates :title, presence: true
  mount_uploader :avatar, PictureUploader
  acts_as_votable
  def score
    get_upvotes.size - get_downvotes.size
  end
end
