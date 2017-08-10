class Shot < ApplicationRecord
  belongs_to  :board
  has_one :player, through: :board

  def self.most_recent
    self.last
  end
end
