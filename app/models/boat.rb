class Boat < ApplicationRecord
	validates :name, uniqueness: true, presence: true

	
	
	has_many :jobs , through: :boat_jobs

end
