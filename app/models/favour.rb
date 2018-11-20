class Favour < ApplicationRecord
  belongs_to :user
  has_many :responses, as: :postable
  mount_uploader :photo, PhotoUploader
end
