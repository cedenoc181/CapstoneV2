class User < ApplicationRecord
    has_one :users_info
    has_many :appointments, dependent: :destroy
    has_many :physical_therapists, through: :appointments 
    has_many :favorites, dependent: :destroy
    has_many :exercises, through: :favorites
    has_many :reviews, dependent: :destroy
    has_many :physical_therapists, through: :reviews

    has_secure_password
    # add validation to password length 
    validates :email, uniqueness: true
end
