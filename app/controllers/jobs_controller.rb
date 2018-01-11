class JobsController < ApplicationController

	def index
		@jobs = Job.all
	end

	def show
		@jobs = Job.find(params[:id])
	end

	def new
		@jobs = Job.new
	end

	def create
		@jobs = Job.create(description: params[:job][:description], origin: params[:job][:origin], destination: params[:job][:destination], cost: params[:job][:cost], containers: params[:job][:containers])
		redirect_to jobs_path
	end

	def edit
		@jobs = Job.find(params[:id])
	end

	def update
		@jobs = Job.find(params[:id])
		@jobs.update(description: params[:job][:description], origin: params[:job][:origin], destination: params[:job][:destination], cost: params[:job][:cost], containers: params[:job][:containers])
		redirect_to jobs_path
	end

	def destroy
		@jobs = Job.find(params[:id])
		@jobs.destroy
		redirect_to jobs_path
	end
	
end
