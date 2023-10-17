class PtInfo < ApplicationRecord
    belongs_to :physical_therapist

    validates :physical_therapist, presence: true
end
