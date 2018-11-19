class Favour < ApplicationRecord
  belongs_to :user
  has_many :responses
end
