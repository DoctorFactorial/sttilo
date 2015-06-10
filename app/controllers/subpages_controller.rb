class SubpagesController < ApplicationController
  before_action :set_subpage, only: [:show, :edit, :update, :destroy]

  # GET /subpages
  # GET /subpages.json
  def index
    @subpages = Subpage.all
  end

  # GET /subpages/1
  # GET /subpages/1.json
  def show
    @subpage = Subpage.friendly.find(params[:id])
    @photos = Photo.all
    #redirect_to send("#{@subpage.category.downcase}_path")
  end

  # GET /subpages/new
  def new
    @subpage = Subpage.new
  end

  # GET /subpages/1/edit
  def edit
  end

  # POST /subpages
  # POST /subpages.json
  def create
    @subpage = Subpage.new(subpage_params)

    respond_to do |format|
      if @subpage.save
        format.html { redirect_to @subpage, notice: 'Subpage was successfully created.' }
        format.json { render :show, status: :created, location: @subpage }
      else
        format.html { render :new }
        format.json { render json: @subpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subpages/1
  # PATCH/PUT /subpages/1.json
  def update
    respond_to do |format|
      if @subpage.update(subpage_params)
        format.html { redirect_to @subpage, notice: 'Subpage was successfully updated.' }
        format.json { render :show, status: :ok, location: @subpage }
      else
        format.html { render :edit }
        format.json { render json: @subpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subpages/1
  # DELETE /subpages/1.json
  def destroy
    @subpage.destroy
    respond_to do |format|
      format.html { redirect_to subpages_url, notice: 'Subpage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subpage
      @subpage = Subpage.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subpage_params
      params.require(:subpage).permit(:name, :content, :category, :image)
    end
end
