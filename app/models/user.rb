class User < ApplicationRecord
  has_many :favours, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :informations, dependent: :destroy
  has_many :responses, as: :postable, dependent: :destroy
  geocoded_by :address

  after_validation :geocode
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
