class GamesController < ApplicationController
  def new
    # we need before_action authenticate to disallow a
    # user who isn't signed in from accessing this URL
    @game = Game.new(creator: current_user.id)
    if @game.save
      render 'show'
    else
      render 'new'
    end
  end

  def show
    @game = Game.find_by(id: params[:id])
    @player1_board = Board.where(game_id: @game.id, player_id: 1)[0]
    @player2_board = Board.where(game_id: @game.id, player_id: 2)[0]
    @shot = Shot.new
  end
end
