class GameSavesController < ApplicationController
  wrap_parameters :game_save, include: [:game_id, :save_text]
  before_action :set_game_save, only: [:show, :update, :destroy]

  # GET /game_saves
  def index
    @game_saves = GameSave.all

    render json: @game_saves
  end

  # GET /game_saves/1
  def show
    render json: @game_save
  end

  # POST /game_saves
  def create
    @game_save = GameSave.new(game_save_params)

    if @game_save.save
      render json: @game_save, status: :created, location: @game_save
    else
      render json: @game_save.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /game_saves/1
  def update
    if @game_save.update(game_save_params)
      render json: @game_save
    else
      render json: @game_save.errors, status: :unprocessable_entity
    end
  end

  # DELETE /game_saves/1
  def destroy
    @game_save.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_save
      @game_save = GameSave.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_save_params
      params.require(:game_save).permit(:game_id, :save_text)
    end
end
