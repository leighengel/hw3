


  class PlacesController < ApplicationController
    def index
      # Fetch all places
      @places = Place.all
    end
  
    def show
      # Fetch the place based on the id from the URL
      @place = Place.find_by({"id" => params["id"]})
    end
  
    def new
      # Render view with new Place form

      @place = Place.new

    end
  
    # Other actions...

  
  def create
    #start with entry 

    @place = Place.new

    @place["name"] = params["name"]

    #save entry 

    @place.save

    #redirect user 

   redirect_to "/places"

  end 
end

