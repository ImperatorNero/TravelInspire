class Article < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :title, presence: true,
                  length: { minimum: 5 }
  validates :photo, presence: true
  belongs_to :user
  has_many :favorites, dependent: :destroy

  scope :favorited_by, -> (username) { joins(:favorites).where(favorites: { user: User.where(username: username) }) }
end
