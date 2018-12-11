class ScootersController < ApplicationController
  before_action :set_scooter, only: [:show, :update, :destroy]

  # GET /scooters
  def index
    @scooters = Scooter.all

    render json: @scooters
  end

  # GET /scooters/1
  def show
    render json: @scooter
  end

  # POST /scooters
  def create
    @scooter = Scooter.new(scooter_params)

    if @scooter.save
      render json: @scooter, status: :created, location: @scooter
    else
      render json: @scooter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /scooters/1
  def update
    if @scooter.update(scooter_params)
      render json: @scooter
    else
      render json: @scooter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /scooters/1
  def destroy
    @scooter.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scooter
      @scooter = Scooter.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def scooter_params
      params.require(:scooter).permit(:latitude, :longitude)
    end
end
