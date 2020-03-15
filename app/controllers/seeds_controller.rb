class SeedsController < ApplicationController
  before_action :set_seed, only: [:show, :update, :destroy]

  # GET /seeds
  def index
    @seeds = Seed.all

    render json: @seeds
  end

  # GET /seeds/1
  def show
    render json: @seed
  end

  # POST /seeds
  def create
    @seed = Seed.new(seed_params)

    if @seed.save
      render json: @seed, status: :created, location: @seed
    else
      render json: @seed.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /seeds/1
  def update
    if @seed.update(seed_params)
      render json: @seed
    else
      render json: @seed.errors, status: :unprocessable_entity
    end
  end

  # DELETE /seeds/1
  def destroy
    @seed.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seed
      @seed = Seed.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def seed_params
      params.require(:seed).permit(:game_id, :seed)
    end
end
