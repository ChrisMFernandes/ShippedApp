class BoatJobsController < ApplicationController
	
	def index
		@boat_jobs = BoatJob.all
		@jobs = Job.all
		@boats = Boat.all
	end

	def show
		@boat_jobs = BoatJob.find(params[:id])
	end

	def new
		@boat_jobs = BoatJob.new
	end

	def create
		@boats = Boat.create(name: params[:name], containers: params[:containers], location: params[:location])
		redirect_to boat_jobs_path
	end

	def edit
		@boat_jobs = BoatJob.find(params[:id])
		@jobs = Job.all
		@boats = Boat.all
	end

	def update
		@jobs = Job.find(params[:id])
		@jobs.update(description: params[:description], origin: params[:origin], destination: params[:destination], cost: params[:cost], containers: params[:containers])
		@boats = Boat.find(params[:id])
		@boats.update(name: params[:name], containers: params[:containers], location: params[:location])
		redirect_to boat_jobs_path
	end

	def destroy
		@boats = Boat.find(params[:id])
		@boats.destroy
		redirect_to boat_jobs_path
	end

end