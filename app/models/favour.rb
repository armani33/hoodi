class Favour < ApplicationRecord
  belongs_to :user
  has_many :responses, as: :postable
end
