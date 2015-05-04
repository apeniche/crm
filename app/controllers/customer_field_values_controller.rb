class CustomerFieldValuesController < ApplicationController
  before_action :set_customer_field_value, only: [:show, :edit, :update, :destroy]

  # GET /customer_field_values
  # GET /customer_field_values.json
  def index
    @customer_field_values = CustomerFieldValue.all
  end

  # GET /customer_field_values/1
  # GET /customer_field_values/1.json
  def show
  end

  # GET /customer_field_values/new
  def new
    @customer_field_value = CustomerFieldValue.new
  end

  # GET /customer_field_values/1/edit
  def edit
  end

  # POST /customer_field_values
  # POST /customer_field_values.json
  def create
    @customer_field_value = CustomerFieldValue.new(customer_field_value_params)

    respond_to do |format|
      if @customer_field_value.save
        format.html { redirect_to @customer_field_value, notice: 'Customer field value was successfully created.' }
        format.json { render :show, status: :created, location: @customer_field_value }
      else
        format.html { render :new }
        format.json { render json: @customer_field_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_field_values/1
  # PATCH/PUT /customer_field_values/1.json
  def update
    respond_to do |format|
      if @customer_field_value.update(customer_field_value_params)
        format.html { redirect_to @customer_field_value, notice: 'Customer field value was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_field_value }
      else
        format.html { render :edit }
        format.json { render json: @customer_field_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_field_values/1
  # DELETE /customer_field_values/1.json
  def destroy
    @customer_field_value.destroy
    respond_to do |format|
      format.html { redirect_to customer_field_values_url, notice: 'Customer field value was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_field_value
      @customer_field_value = CustomerFieldValue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_field_value_params
      params.require(:customer_field_value).permit(:customer_id, :customer_field_id, :field_value)
    end
end
