class AirportsController < ApplicationController
  # GET /airports
  # GET /airports.xml
  def index
    @airports = Airport.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @airports }
    end
  end

  # GET /airports/1
  # GET /airports/1.xml
  def show
    @airport = Airport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @airport }
    end
  end
end
