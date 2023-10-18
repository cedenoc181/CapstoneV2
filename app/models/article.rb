class Article < ApplicationRecord
    belongs_to :physical_therapit
    has_many :expressions, dependent: :destroy
end
