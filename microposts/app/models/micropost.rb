class Micropost < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_many :users, through: :favorites, source: :user
  
  validates :user_id, presence: true
  validates :favorite_id, presence: true, length: { maximum: 255 }
end