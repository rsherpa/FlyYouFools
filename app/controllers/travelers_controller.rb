class TravelersController < ApplicationController
  # GET /travelers
  # GET /travelers.xml
  def index
    @travelers = Traveler.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @travelers }
    end
  end

  # GET /travelers/1
  # GET /travelers/1.xml
  def show
    @traveler = Traveler.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @traveler }
    end
  end

  # GET /travelers/new
  # GET /travelers/new.xml
  def new
    @traveler = Traveler.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @traveler }
    end
  end

  # GET /travelers/1/edit
  def edit
    @traveler = Traveler.find(params[:id])
  end

  # POST /travelers
  # POST /travelers.xml
  def create
    @traveler = Traveler.new(params[:traveler])

    respond_to do |format|
      if @traveler.save
        format.html { redirect_to(@traveler, :notice => 'Traveler was successfully created.') }
        format.xml  { render :xml => @traveler, :status => :created, :location => @traveler }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @traveler.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /travelers/1
  # PUT /travelers/1.xml
  def update
    @traveler = Traveler.find(params[:id])

    respond_to do |format|
      if @traveler.update_attributes(params[:traveler])
        format.html { redirect_to(@traveler, :notice => 'Traveler was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @traveler.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /travelers/1
  # DELETE /travelers/1.xml
  def destroy
    @traveler = Traveler.find(params[:id])
    @traveler.destroy

    respond_to do |format|
      format.html { redirect_to(travelers_url) }
      format.xml  { head :ok }
    end
  end
end
