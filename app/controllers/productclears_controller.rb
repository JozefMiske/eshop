class ProductclearsController < ApplicationController
  before_action :set_productclear, only: %i[ show edit update destroy ]

  # GET /productclears or /productclears.json
  def index
    @productclears = Productclear.all
  end

  # GET /productclears/1 or /productclears/1.json
  def show
  end

  # GET /productclears/new
  def new
    @productclear = Productclear.new
  end

  # GET /productclears/1/edit
  def edit
  end

  # POST /productclears or /productclears.json
  def create
    @productclear = Productclear.new(productclear_params)

    respond_to do |format|
      if @productclear.save
        format.html { redirect_to productclear_url(@productclear), notice: "Productclear was successfully created." }
        format.json { render :show, status: :created, location: @productclear }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @productclear.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productclears/1 or /productclears/1.json
  def update
    respond_to do |format|
      if @productclear.update(productclear_params)
        format.html { redirect_to productclear_url(@productclear), notice: "Productclear was successfully updated." }
        format.json { render :show, status: :ok, location: @productclear }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @productclear.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productclears/1 or /productclears/1.json
  def destroy
    @productclear.destroy

    respond_to do |format|
      format.html { redirect_to productclears_url, notice: "Productclear was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_productclear
      @productclear = Productclear.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def productclear_params
      params.fetch(:productclear, {})
    end
end
