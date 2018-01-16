class JobsController < ApplicationController

	def index
		@jobs = Job.all
	end

	def show
		@jobs = Job.find(params[:id])
	end

	def new
		@job = Job.all
		@jobs = Job.new
	end

	def create
		@jobs = Job.create(description: params[:job][:description], origin: params[:job][:origin], destination: params[:job][:destination], cost: params[:job][:cost], containers: params[:job][:containers])
		
		respond_to do |format|
    		if @jobs.save
      			format.html { redirect_to jobs_path, notice: 'Job was successfully created, yo!' }
      			format.json { render :index, status: :created, location: jobs_path }
      			format.js
    		else
      			format.html { render :new }
      			format.json { render json: @jobs.errors, status: :unprocessable_entity }
      			format.js
    		end
  		end
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
