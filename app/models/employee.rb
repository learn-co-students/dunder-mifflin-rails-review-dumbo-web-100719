class Employee < ApplicationRecord
    belongs_to :dog

    validates :alias, presence: true
    validates :title, presence: true
end
