class Exercise < ApplicationRecord
    has_many :favorites, dependent: :destroy
    has_many :users, through: :favorites

    validates :name, uniqueness: true
end
