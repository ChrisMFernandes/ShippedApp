class BoatsController < ApplicationController

	def index
		@boats = Boat.all
	end

	def show
		@boats = Boat.find(params[:id])
	end

	def new
		@boats = Boat.new
	end

	def create
		@boats = Boat.create(name: params[:boat][:name], containers: params[:boat][:containers], location: params[:boat][:location])
		redirect_to boats_path
	end

	def edit
		@boats = Boat.find(params[:id])
	end

	def update
		@boats = Boat.find(params[:id])
		@boats.update(name: params[:boat][:name], containers: params[:boat][:containers], location: params[:boat][:location])
		redirect_to boats_path
	end

	def destroy
		@boats = Boat.find(params[:id])
		@boats.destroy
		redirect_to boats_path
	end

	def boat_params
		params.require(:post).permit(:name, :container, :location, :image)
	end
end
