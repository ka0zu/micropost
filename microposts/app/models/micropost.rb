class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :favorite_relations
  has_many :favorites, through: :favorite_relations, source: :user
  
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }
end
