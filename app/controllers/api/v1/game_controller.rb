class Api::V1::GameController < ApplicationController

  def index
    games = Game.all
    render json: games, status: 200
  end

  def create
  	# byebug
  	game = Game.create(game_params)
  	
  end

  private

  def game_params
  	params.require(:game).permit(:username, :outcome)
  end

end
