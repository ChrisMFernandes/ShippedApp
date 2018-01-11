class Job < ApplicationRecord
	validates :description, uniqueness: true, presence: true, length: { minimum: 50 }
	validates_numericality_of :cost, :only_integer => true, :greater_than_or_equal_to => 1000

	has_many :boats
end
