class ChambersController < ApplicationController
  # GET /chambers
  # GET /chambers.json
  def index
    @all_chambers = Chamber.by_id.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /chambers/1
  # GET /chambers/1.json
  def show
    @chamber = Chamber.find(params[:id])
  end

  # GET /chambers/new
  # GET /chambers/new.json
  def new
    @chamber = Chamber.new

  end

  # GET /chambers/1/edit
  def edit
    @chamber = Chamber.find(params[:id])
  end

  # POST /chambers
  # POST /chambers.json
  def create
    @chamber = Chamber.new(params[:chamber])

    if @chamber.save
      flash[:notice] = "Successfully created chamber."
      redirect_to @chamber
    else
      render :action => 'new'
    end
  end

  # PUT /chambers/1
  # PUT /chambers/1.json
  def update
    @chamber = Chamber.find(params[:id])

    if @chamber.update_attributes(params[:chamber])
      flash[:notice] = "Successfully updated chamber."
      redirect_to chambers_path
    else
      render :action => 'edit'
    end
  end

  # DELETE /chambers/1
  # DELETE /chambers/1.json
  def destroy
    @chamber = Chamber.find(params[:id])
    @chamber.destroy
    flash[:notice] = "Successfully deleted chamber."
    redirect_to chambers_url
  end

  def empty
    @chamber = Chamber.find(params[:id])
    @chamber.empty_chamber
    flash[:notice] = "Emptied Chamber #{@chamber.id}!"
    redirect_to chambers_url
  end
end
