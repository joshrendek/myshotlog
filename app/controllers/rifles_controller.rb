class RiflesController < ApplicationController
  # GET /rifles
  # GET /rifles.xml
  before_filter :check_ownership, :except => [:index, :new, :create]
  def index
    @rifles = current_user.rifles 

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rifles }
    end
  end

  # GET /rifles/1
  # GET /rifles/1.xml
  def show
    @rifle = Rifle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @rifle }
    end
  end

  # GET /rifles/new
  # GET /rifles/new.xml
  def new
    @rifle = Rifle.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @rifle }
    end
  end

  # GET /rifles/1/edit
  def edit
    @rifle = Rifle.find(params[:id])
  end

  # POST /rifles
  # POST /rifles.xml
  def create
    @rifle = Rifle.new(params[:rifle])
    @rifle.user_id = current_user.id
    respond_to do |format|
      if @rifle.save
        format.html { redirect_to(@rifle, :notice => 'Rifle was successfully created.') }
        format.xml  { render :xml => @rifle, :status => :created, :location => @rifle }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @rifle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rifles/1
  # PUT /rifles/1.xml
  def update
    @rifle = Rifle.find(params[:id])

    respond_to do |format|
      if @rifle.update_attributes(params[:rifle])
        format.html { redirect_to(@rifle, :notice => 'Rifle was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @rifle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rifles/1
  # DELETE /rifles/1.xml
  def destroy
    @rifle = Rifle.find(params[:id])
    @rifle.destroy

    respond_to do |format|
      format.html { redirect_to(rifles_url) }
      format.xml  { head :ok }
    end
  end

  private

  def check_ownership
    @rifle = Rifle.find(params[:id])
    if @rifle.user_id != current_user.id
      redirect_to root_url, :notice => "You didn't create that gun entry!"
    end
  end
end
