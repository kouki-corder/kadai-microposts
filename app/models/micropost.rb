class Micropost < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_many :favorite_users, through: :favorite, source: :user
  
  validates :content, presence: true, length: { maximum: 255 }
end
