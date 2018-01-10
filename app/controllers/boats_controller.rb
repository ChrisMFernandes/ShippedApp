class BoatsController < ApplicationController
	has_many :jobs
	validates :name, uniqueness: true, presence: true 
end
