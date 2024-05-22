class EntriesController < ApplicationController
  
  def new

  @entry = Entry.new

  end

  def create
    #start with entry 

    @entry = Entry.new

    @entry["title"] = params["title"]
    @entry["posted_on"] = params["posted_on"]
    @entry["description"] = params["description"]
    @entry["place_id"] = params["place_id"]

    #save entry 

    @entry.save

    #redirect user 

   redirect_to "/places/#{@entry["place_id"]}"

  end 


end


    
    



end
