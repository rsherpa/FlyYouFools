class AirportsController < ApplicationController
  # GET /airports
  # GET /airports.json
  def index
    @airports = Airport.all

    respond_to do |format|
      format.html # index.html.erb
      format.json  { render :json => @airports }
    end
  end
end
