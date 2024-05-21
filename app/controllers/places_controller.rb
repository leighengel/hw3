class PlacesController < ApplicationController


  def index
    # find all Company rows
    # render companies/index view
  end

  def show
    # find a Company
    # render companies/show view with details about Company
  end

  def new
    # render view with new Company form
  end

  class PlacesController < ApplicationController
    def index
      # Fetch all places
      @places = Place.all
    end
  
    def show
      # Fetch the place based on the id from the URL
      @place = Place.find(params[:id])
    end
  
    def new
      # Render view with new Place form
    end
  
    # Other actions...
  end
  

end

