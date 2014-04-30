class PlacesController < ApplicationController
	def index

		# @places = Place.near("Barcelona")
		# if the user searches, find enear that search
		# if they don't search, find pubs near London
		if params[:search].present?
			@places = Place.near(params[:search], 100).page(params[:page]).per(5)	
		else 
			@places = Place.near("London").page(params[:page]).per(5)
		end


	end

	def new
		@place = Place.new
	end

	def create
		@place = Place.new(place_params)

		if @place.save
			flash[:success] = "Your wherebook was added."
			redirect_to root_path

		else
			render "new"
		
		end
	
	end

	def place_params
		params.require(:place).permit(:booktitle, :description, :address, :latitude, :longitude, :approximate)
	

	end


end
