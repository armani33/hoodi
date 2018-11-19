class User < ApplicationRecord
  has_many :favours
  has_many :events
  has_many :informations
  has_many :responses
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
