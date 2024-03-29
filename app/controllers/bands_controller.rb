class BandsController < ApplicationController
  before_action :set_band, only: [:destroy]

  # GET /bands
  # GET /bands.json
  def index
    @category = Category.find_by(category_name: params[:category_id]) 
    @bands = @category.bands
  end

  # GET /bands/1
  # GET /bands/1.json
  def show
    @category = Category.find_by(category_name: params[:category_id])
    @band = @category.bands.find(params[:id])
  end

  # GET /bands/new
  def new
    @category = Category.find_by(category_name: params[:category_id]) 
    @band = @category.bands.build
  end

  # GET /bands/1/edit
  def edit
    @category = Category.find_by(category_name: params[:category_id])
    @band = @category.bands.find(params[:id])
  end

  # POST /bands
  # POST /bands.json
  def create

    @category = Category.find_by(category_name: params[:band][:category])    
    @band = @category.try(:bands).build(band_params)

    respond_to do |format|
      if @band.save
        format.html { redirect_to @category, notice: 'Band was successfully created.' }
        format.json { render :show, status: :created, location: @band }
      else
        format.html { render :new }
        format.json { render json: @band.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bands/1
  # PATCH/PUT /bands/1.json
  def update
    @category = Category.find_by(category_name: params[:category_id])
    @band = @category.bands.find(params[:id])
    respond_to do |format|
      if @band.update(band_params)
        format.html { redirect_to category_band_path(@category, @band), notice: 'Band was successfully updated.' }
        format.json { render :show, status: :ok, location: @band }
      else
        format.html { render :edit }
        format.json { render json: @band.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bands/1
  # DELETE /bands/1.json
  def destroy
    @band.destroy
    respond_to do |format|
      format.html { redirect_to bands_url, notice: 'Band was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_band
      @band = Band.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def band_params
      params.require(:band).permit(:name, :country)
    end
end
