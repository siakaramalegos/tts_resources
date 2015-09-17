class ResourcesController < ApplicationController
  before_action :set_resource, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
  before_action :authenticate_user!, only: [:new, :edit, :update, :create, :destroy, :upvote, :downvote]

  # GET /resources
  # GET /resources.json
  def index
    @categories = Category.all
    category_ids=params[:category_ids]
    if params[:category_ids]
      @resources = Resource.where(category_id: params[:category_ids].split(","))
    else
      @resources = Resource.all
    end

    if params[:search]
      @resources = Resource.where("title LIKE ? OR notes LIKE ?", "%#{params[:search]}%", "%#{params[:search].downcase}%")
      if @resources.size.zero?
        flash[:notice] = "No results found.  Try again!"
        @resources = Resource.all?
      end
    else
      @resource = Resource.all
    end

    # Make sure resources are listed in order of title
    @resources.order!(:title)
  end

  # GET /resources/1
  # GET /resources/1.json
  def show
  end

  # GET /resources/new
  def new
    @resource = Resource.new
    @categories = Category.all
  end

  # GET /resources/1/edit
  def edit
    @categories = Category.all
  end

  # POST /resources
  # POST /resources.json
  def create
    @resource = Resource.new(resource_params)
    @categories = Category.all

    respond_to do |format|
      if @resource.save
        format.html { redirect_to @resource, notice: 'Resource was successfully created.' }
        format.json { render :show, status: :created, location: @resource }
      else
        format.html { render :new }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resources/1
  # PATCH/PUT /resources/1.json
  def update
    @categories = Category.all

    respond_to do |format|
      if @resource.update(resource_params)
        format.html { redirect_to @resource, notice: 'Resource was successfully updated.' }
        format.json { render :show, status: :ok, location: @resource }
      else
        format.html { render :edit }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resources/1
  # DELETE /resources/1.json
  def destroy
    @resource.destroy
    respond_to do |format|
      format.html { redirect_to resources_url, notice: 'Resource was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote
    @resource.vote_by :voter => current_user
    redirect_to :back
  end

  def downvote
    @resource.downvote_from current_user
    redirect_to :back
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource
      @resource = Resource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resource_params
      params.require(:resource).permit(:title, :link, :notes, :category_id)
    end
end
