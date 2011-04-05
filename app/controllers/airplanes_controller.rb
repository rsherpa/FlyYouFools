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

  # GET /airplanes/new
  # GET /airplanes/new.xml
  def new
    @airplane = Airplane.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @airplane }
    end
  end

  # GET /airplanes/1/edit
  def edit
    @airplane = Airplane.find(params[:id])
  end

  # POST /airplanes
  # POST /airplanes.xml
  def create
    @airplane = Airplane.new(params[:airplane])

    respond_to do |format|
      if @airplane.save
        format.html { redirect_to(@airplane, :notice => 'Airplane was successfully created.') }
        format.xml  { render :xml => @airplane, :status => :created, :location => @airplane }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @airplane.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /airplanes/1
  # PUT /airplanes/1.xml
  def update
    @airplane = Airplane.find(params[:id])

    respond_to do |format|
      if @airplane.update_attributes(params[:airplane])
        format.html { redirect_to(@airplane, :notice => 'Airplane was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @airplane.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /airplanes/1
  # DELETE /airplanes/1.xml
  def destroy
    @airplane = Airplane.find(params[:id])
    @airplane.destroy

    respond_to do |format|
      format.html { redirect_to(airplanes_url) }
      format.xml  { head :ok }
    end
  end
end
