module GameHelper

  def current_game
    if !Game.last.winner?
      Game.last
    end
  end

  def game_in_session?
    !Game.last.winner? ? true : false
  end

end