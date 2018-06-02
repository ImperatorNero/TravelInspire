class Article < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :title, presence: true,
                  length: { minimum: 5 }
  validates :photo, presence: true
end
  
