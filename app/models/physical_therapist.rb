class PhysicalTherapist < ApplicationRecord
    has_one  :pt_info
    has_many :appointments, dependent: :destroy
    has_many :users, through: :appointments 
    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews

    accepts_nested_attributes_for :pt_info
end
