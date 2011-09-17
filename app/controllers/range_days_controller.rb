class RangeDaysController < ApplicationController
  before_filter :load_rifle

  # GET /range_days
  # GET /range_days.xml
  def index
    @range_days = RangeDay.where("user_id = ? AND rifle_id = ?", current_user.id, params[:rifle_id]) 

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @range_days }
    end
  end

  # GET /range_days/1
  # GET /range_days/1.xml
  def show
    @range_day = RangeDay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @range_day }
    end
  end

  # GET /range_days/new
  # GET /range_days/new.xml
  def new
    @range_day = RangeDay.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @range_day }
    end
  end

  # GET /range_days/1/edit
  def edit
    @range_day = RangeDay.find(params[:id])
  end

  # POST /range_days
  # POST /range_days.xml
  def create
    @range_day = RangeDay.new(params[:range_day])
    @range_day.user_id = current_user.id
    respond_to do |format|
      if @range_day.save
        format.html { redirect_to(@range_day.rifle, :notice => 'Range day was successfully created.') }
        format.xml  { render :xml => @range_day, :status => :created, :location => @range_day }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @range_day.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /range_days/1
  # PUT /range_days/1.xml
  def update
    @range_day = RangeDay.find(params[:id])

    respond_to do |format|
      if @range_day.update_attributes(params[:range_day])
        format.html { redirect_to(@range_day.rifle, :notice => 'Range day was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @range_day.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /range_days/1
  # DELETE /range_days/1.xml
  def destroy
    @range_day = RangeDay.find(params[:id])
    @range_day.destroy

    respond_to do |format|
      format.html { redirect_to(range_days_url) }
      format.xml  { head :ok }
    end
  end

  private
  def load_rifle
    @rifle = Rifle.find(params[:rifle_id])
  end
end
