class PlacesController < ApplicationController

	before_action :set_place, only: [:show, :update, :edit, :destroy]

	def index
  		@places = Place.all
	end
	def show
	  @comments = Comment.new
	end
	def new
		load_categories
		@place = Place.new
	end
	def create
		@place = Place.new(strong_params)

		if @place.save
			flash[:success] = "Başarıyla Eklendi"
			redirect_to place_path(@place)
		else
			load_categories
			render :new
		end
	end
	def edit
		load_categories
	end
	def update
		if @place.update(strong_params)
			flash[:success] = "Başarıyla Güncellendi"
      redirect_to place_path(@place)
    else
			load_categories
      render :edit
    end
	end
	def destroy
		@place.destroy
		flash[:success] = "Başarıyla Silindi"
    redirect_to places_path
	end
	private

	def set_place
		@place = Place.find(params[:id])
	end
	def load_categories
		@categories = Category.all.collect {|c| [c.name, c.id]}
	end
	def strong_params
		params.require(:place).permit(:name, :address, :established_at, :phone_number, :contract_mail, :city, :description, :category_id)
	end
end
