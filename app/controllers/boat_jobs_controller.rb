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
		@boats = Boat.create(name: params[:boat][:name], containers: params[:boat][:containers], location: params[:boat][:location])
		redirect_to boat_jobs_path
	end

	def edit
		@boat_jobs = BoatJob.find(params[:id])
		@jobs = Job.all
		@boats = Boat.all
	end

	def update
		@jobs = Job.find(params[:id])
		@jobs.update(description: params[:job][:description], origin: params[:job][:origin], destination: params[:job][:destination], cost: params[:job][:cost], containers: params[:job][:containers])
		@boats = Boat.find(params[:id])
		@boats.update(name: params[:boat][:name], containers: params[:boat][:containers], location: params[:boat][:location])
		redirect_to boat_jobs_path
	end

	def destroy
		@boats = Boat.find(params[:id])
		@boats.destroy
		redirect_to boat_jobs_path
	end

end