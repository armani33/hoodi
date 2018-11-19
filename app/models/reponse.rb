class Reponse < ApplicationRecord
  belongs_to :user
  belongs_to :event
  belongs_to :favour
  belongs_to :information
end
