class CustomerFieldsController < ApplicationController
  before_action :set_customer_field, only: [:show, :edit, :update, :destroy]

  # GET /customer_fields
  # GET /customer_fields.json
  def index
    @customer_fields = CustomerField.all
  end

  # GET /customer_fields/1
  # GET /customer_fields/1.json
  def show
  end

  # GET /customer_fields/new
  def new
    @customer_field = CustomerField.new
  end

  # GET /customer_fields/1/edit
  def edit
  end

  # POST /customer_fields
  # POST /customer_fields.json
  def create
    @customer_field = CustomerField.new(customer_field_params)

    respond_to do |format|
      if @customer_field.save
        format.html { redirect_to @customer_field, notice: 'Customer field was successfully created.' }
        format.json { render :show, status: :created, location: @customer_field }
      else
        format.html { render :new }
        format.json { render json: @customer_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_fields/1
  # PATCH/PUT /customer_fields/1.json
  def update
    respond_to do |format|
      if @customer_field.update(customer_field_params)
        format.html { redirect_to @customer_field, notice: 'Customer field was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_field }
      else
        format.html { render :edit }
        format.json { render json: @customer_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_fields/1
  # DELETE /customer_fields/1.json
  def destroy
    @customer_field.destroy
    respond_to do |format|
      format.html { redirect_to customer_fields_url, notice: 'Customer field was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_field
      @customer_field = CustomerField.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_field_params
      params.require(:customer_field).permit(:field_name, :field_type, :validity_period, :customer_field_id)
    end
end
