class Event < ApplicationRecord
  belongs_to :user
  has_many :responses, as: :postable, dependent: :destroy
  mount_uploader :photo, PhotoUploader
end
