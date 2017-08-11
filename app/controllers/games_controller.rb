class GamesController < ApplicationController
	include ShipHelper

  def new
  	@opponent = User.find(2)
  	@game = Game.create(creator: current_user)
    @board1 = Board.create(player: current_user, game: @game)
    @board2 = Board.create(player: @opponent, game: @game)
    @ships1 = generate_ships(@board1)
    @ships2 = generate_ships(@board2)
  end


	def create 
		
	end

end