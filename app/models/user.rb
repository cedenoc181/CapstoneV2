class User < ApplicationRecord
    has_one :users_info
    has_many :appointments, dependent: :destroy
    # will render an array of all therapist the user has made an appointment with 
    has_many :appointments_with_physical_therapists, through: :appointments, source: :physical_therapist
    has_many :favorites, dependent: :destroy
    has_many :exercises, through: :favorites
    has_many :reviews, dependent: :destroy
    # will render an array of all therapist that the user has left a review on 
    has_many :therapist_user_reviewed, through: :reviews, source: :physical_therapist

    has_secure_password
    # add validation to password length 
    validates :password, length: { minimum: 8 }, if: -> { password.present? }

    validates :email, uniqueness: true
end
