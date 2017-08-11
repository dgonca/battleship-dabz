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
  end
end
