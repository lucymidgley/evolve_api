class FoodInstancesController < ApplicationController
  before_action :set_food_instance, only: [:show, :update, :destroy]

  # GET /food_instances
  def index
    @food_instances = FoodInstance.all

    render json: @food_instances
  end

  # GET /food_instances/1
  def show
    render json: @food_instance
  end

  # POST /food_instances
  def create
    @food_instance = FoodInstance.new(food_instance_params)

    if @food_instance.save
      render json: @food_instance, status: :created, location: @food_instance
    else
      render json: @food_instance.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /food_instances/1
  def update
    if @food_instance.update(food_instance_params)
      render json: @food_instance
    else
      render json: @food_instance.errors, status: :unprocessable_entity
    end
  end

  # DELETE /food_instances/1
  def destroy
    @food_instance.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_instance
      @food_instance = FoodInstance.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def food_instance_params
      params.require(:food_instance).permit(:game_id, :food_id, :x_coord, :y_coord, :energy_level)
    end
end
