class Information < ApplicationRecord
  belongs_to :user
  has_many :responses, as: :postable
end
