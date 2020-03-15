class OrganismsController < ApplicationController
  before_action :set_organism, only: [:show, :update, :destroy]

  # GET /organisms
  def index
    @organisms = Organism.all

    render json: @organisms
  end

  # GET /organisms/1
  def show
    render json: @organism
  end

  # POST /organisms
  def create
    @organism = Organism.new(organism_params)

    if @organism.save
      render json: @organism, status: :created, location: @organism
    else
      render json: @organism.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /organisms/1
  def update
    if @organism.update(organism_params)
      render json: @organism
    else
      render json: @organism.errors, status: :unprocessable_entity
    end
  end

  # DELETE /organisms/1
  def destroy
    @organism.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organism
      @organism = Organism.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def organism_params
      params.require(:organism).permit(:game_id, :size, :x_coord, :y_coord, :speed, :color, :perception, :energy_efficiency, :max_energy, :energy_level, :max_size, :age, :reproductive_age, :life_span, :offspring_capacity, :parent_1, :parent_2, :name, :predator, :sex)
    end
end
