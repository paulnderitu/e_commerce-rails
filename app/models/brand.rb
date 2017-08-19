class Brand < ActiveRecord::Base
  validates :title, presence: true
end
