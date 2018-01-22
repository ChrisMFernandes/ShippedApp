class Boat < ApplicationRecord
	validates :name, uniqueness: true, presence: true
 
	has_many :jobs
	has_attached_file :image
	validates_attachment :image, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end

	has_many :jobs , through: :boat_jobs
	has_many :boat_jobs, :dependent => :destroy
end

