class GamedataController < ApplicationController
  before_action :set_game, only: [:show, :update, :destroy]

  # GET /gamesdata
  def index
    @user = User.find(request.headers[:ID])
    @games = Game.find_by_sql("SELECT games.* FROM games WHERE user_id = #{@user.id}")
    @orgs = @games.map {|game| 
      Organism.find_by_sql("SELECT organisms.* FROM organisms WHERE game_id = #{game.id}")}
    #organisms is an array of arrays (of hashes)
    @scores = @orgs.map {|array|
      array.map {|org| 
        org.max_size + org.speed*10 + org.perception + org.energy_efficiency + org.max_energy + (org.life_span/100) - (org.reproductive_age / 50) + (org.offspring_capacity * 10)
    }}
    puts @scores.inspect

    # @scores is an array that contains the scores of each organism for each game id associated with a user. Loop through each game and add the corresponding scores max index

    @gamesdata = Game.find_by_sql("SELECT games.*, count(organisms.id) as orgs FROM games JOIN organisms ON games.id = organisms.game_id 
    where games.user_id = #{@user.id} GROUP BY games.id")

    # Active model objects (and arrays?? Maybe?) are not the same as ruby hashes. To treat them as ruby hashes requires using the ".as_json" method to convert.
    @gamesdata = @gamesdata.as_json

    @gamesdata.each.with_index {|value,index|
      value[:high_score] = @scores[index].max
    }

    render json: @gamesdata
  end

  # GET /gamesdata/1
  def show
    render json: @game
  end

  # POST /gamesdata
  def create
    @game = Game.new(game_params)

    if @game.save
      render json: @game, status: :created, location: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gamesdata/1
  def update
    if @game.update(game_params)
      render json: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gamesdata/1
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
      params.require(:game).permit(:user_id, :start_date, :temperature, :saved_at, :name, :screen_capture)
    end

end
