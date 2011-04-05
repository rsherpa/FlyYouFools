class AirplanesController < ApplicationController
  # GET /airplanes
  # GET /airplanes.xml
  def index
    @airplanes = Airplane.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @airplanes }
    end
  end

  # GET /airplanes/1
  # GET /airplanes/1.xml
  def show
    @airplane = Airplane.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @airplane }
    end
  end
end
