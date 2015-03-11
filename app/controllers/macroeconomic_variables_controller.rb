class MacroeconomicVariablesController < ApplicationController
  before_action :set_macroeconomic_variable, only: [:show, :edit, :update, :destroy]

  # GET /macroeconomic_variables
  # GET /macroeconomic_variables.json
  def index
    @macroeconomic_variables = MacroeconomicVariable.all
  end

  # GET /macroeconomic_variables/1
  # GET /macroeconomic_variables/1.json
  def show
  end

  # GET /macroeconomic_variables/new
  def new
    @macroeconomic_variable = MacroeconomicVariable.new
  end

  # GET /macroeconomic_variables/1/edit
  def edit
  end

  # POST /macroeconomic_variables
  # POST /macroeconomic_variables.json
  def create
    @macroeconomic_variable = MacroeconomicVariable.new(macroeconomic_variable_params)

    respond_to do |format|
      if @macroeconomic_variable.save
        format.html { redirect_to @macroeconomic_variable, notice: 'Macroeconomic variable was successfully created.' }
        format.json { render :show, status: :created, location: @macroeconomic_variable }
      else
        format.html { render :new }
        format.json { render json: @macroeconomic_variable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /macroeconomic_variables/1
  # PATCH/PUT /macroeconomic_variables/1.json
  def update
    respond_to do |format|
      if @macroeconomic_variable.update(macroeconomic_variable_params)
        format.html { redirect_to @macroeconomic_variable, notice: 'Macroeconomic variable was successfully updated.' }
        format.json { render :show, status: :ok, location: @macroeconomic_variable }
      else
        format.html { render :edit }
        format.json { render json: @macroeconomic_variable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /macroeconomic_variables/1
  # DELETE /macroeconomic_variables/1.json
  def destroy
    @macroeconomic_variable.destroy
    respond_to do |format|
      format.html { redirect_to macroeconomic_variables_url, notice: 'Macroeconomic variable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_macroeconomic_variable
      @macroeconomic_variable = MacroeconomicVariable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def macroeconomic_variable_params
      params.require(:macroeconomic_variable).permit(:country_id, :variable_name, :variable_type, :variable_value)
    end
end
