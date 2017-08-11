module ApplicationHelper
  def enemy
    if current_user == 1
      User.find(2)
    else
      current_user
    end
  end
end
