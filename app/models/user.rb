class User < ApplicationRecord
  has_many :favours
  has_many :events
  has_many :informations
  has_many :responses
end
