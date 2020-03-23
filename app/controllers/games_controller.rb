class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update, :destroy]

  # GET /games
  def index
    if (request.headers[:ID])
      @user = User.find(request.headers[:ID])
      @games = Game.find_by_sql("SELECT games.* FROM games WHERE user_id = #{@user.id}")
    else
      @games = Game.all
    end

    render json: @games
  end

  # GET /games/1
  def show
    render json: @game
  end

  # POST /games
  def create
    @game = Game.new(game_params)

    if @game.save
      render json: @game, status: :created, location: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /games/1
  def update
    
    puts "game params", game_params.inspect
    puts "old game", @game.inspect
    if (@game[:highest_score]) 
      if (@game[:highest_score] > game_params[:highest_score])
        game_params[:highest_score] = @game[:highest_score]
      end
    end
  
    if @game.update(game_params)
      render json: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # DELETE /games/1
  def destroy
    @game.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_params
      params.require(:game).permit(:user_id, :start_date, :temperature, :saved_at, :name, :screen_capture, :highest_score, :num_of_orgs, :playtime)
    end
end