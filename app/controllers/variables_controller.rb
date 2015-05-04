class VariablesController < ApplicationController
  before_action :set_variable, only: [:show, :edit, :update, :destroy]

  # GET /variables
  # GET /variables.json
  def index
    @variables = []
    Category.all.each do |category|
      category.variables.each {|item| @variables.push item}
    end
    @variables
  end

  # GET /variables/1
  # GET /variables/1.json
  def show
  end

  # GET /variables/new
  def new
    @variable_types = []
    VariableType.distinct(:name).each {|e| @variable_types.push e}
    @variable = Variable.new
  end

  # GET /variables/1/edit
  def edit
    @variable_types = []
    VariableType.distinct(:name).each {|e| @variable_types.push e}
  end

  # POST /variables
  # POST /variables.json
  def create
    category = Category.find_by(category_name: params[:variable][:category])    
    @variable = category.try(:variables).build(variable_params)

    respond_to do |format|
      if @variable.save
        format.html { redirect_to category_variable_path(category, @variable), notice: 'Variable was successfully created.' }
        format.json { render :show, status: :created, location: @variable }
      else
        format.html { render :new }
        format.json { render json: @variable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /variables/1
  # PATCH/PUT /variables/1.json
  def update
    #@category = Category.find_by(category_name: params[:variable][:category])
    #@variable = @category.variables.find(params[:variable][:id])
    respond_to do |format|
      if @variable.update(variable_params)
        format.html { redirect_to category_variable_path(@category, @variable), notice: 'Variable was successfully updated.' }
        format.json { render :show, status: :ok, location: @variable }
      else
        format.html { render :edit }
        format.json { render json: @variable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /variables/1
  # DELETE /variables/1.json
  def destroy
    @variable.destroy
    respond_to do |format|
      format.html { redirect_to variables_url, notice: 'Variable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_variable
      @category = Category.find_by(category_name: params[:category_id]) 
      @variable = @category.variables.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def variable_params
      params.require(:variable).permit(:variable_type, :type_number, :description, :variable_name, :locked)
    end
end
