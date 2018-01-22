class Boat < ApplicationRecord
	validates :name, uniqueness: true, presence: true
	has_many :jobs
	has_attached_file :image
	validates_attachment :image, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
