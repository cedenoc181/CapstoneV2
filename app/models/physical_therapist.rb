class PhysicalTherapist < ApplicationRecord
    has_one  :pt_info
    has_many :appointments, dependent: :destroy
    # all patients that booked an appointment with PT will be rendered 
    has_many :my_patients, through: :appointments, source: :user
    has_many :reviews, dependent: :destroy
    # all patients that left a review will be rendered 
    has_many :feedback_from, through: :reviews, source: :user

    accepts_nested_attributes_for :pt_info
end
