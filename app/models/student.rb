class Student < ApplicationRecord
    belongs_to :instructor

    validates :name, presence: true
    # validates :age, comparison: { greater_than_or_equal_to: 18 } why doesn't this work?\
    validates :age, inclusion: 18..118
end
