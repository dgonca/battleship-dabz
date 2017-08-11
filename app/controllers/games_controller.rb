class GamesController < ApplicationController
	include ShipHelper

  def new
  	@opponent = User.find(2)
  	@game = Game.create(creator: current_user)
    @board1 = Board.create(player: current_user, game: @game)
    @board2 = Board.create(player: @opponent, game: @game)
    @ships1 = generate_ships(@board1)
    @ships2 = generate_ships(@board2)

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


	def create 
		
	end

end