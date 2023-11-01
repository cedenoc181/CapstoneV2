class Article < ApplicationRecord
    belongs_to :physical_therapist
    has_many :expressions, dependent: :destroy
end
