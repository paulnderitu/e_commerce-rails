class Brand < ActiveRecord::Base
  has_and_belongs_to_many :categories
  has_many :products, dependent: :destroy
  validates :title, presence: true
  mount_uploader :avatar, PictureUploader
  acts_as_votable
  def score
    get_upvotes.size - get_downvotes.size
  end

  def self.search(term)
    if term
      where('title LIKE ?', "%#{term}%")
    else
      all
    end
  end
end
