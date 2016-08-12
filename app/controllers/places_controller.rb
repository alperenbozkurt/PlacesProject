class PlacesController < ApplicationController
	def index
  		@places = Place.all
	end
	def show
		@place = Place.find(params[:id])
	end
	def new
		@place = Place.new
	end
	def create
		@place = Place.new(strong_params)

		if @place.save
			redirect_to place_path(@place)
		else
			render :new
		end
	end
	def strong_params
		params.permit(:name, :address, :established_at, :phone_number, :contract_mail, :city, :description)
	end
	def edit
		@place = Place.find(params[:id])
	end
	def update
		Place.update(params[:id], :name => params[:name])
		@place = Place.find(params[:id])
		redirect_to place_path(@place)
	end
end
