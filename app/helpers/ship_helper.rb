module ShipHelper 

	def generate_ships(board)
		ships = []
		p 'boop'
		ShipType.all.each do |type|
			ships << Ship.create(ship_type: type, board: board)
		end
		# p ships
		p '````````````````````````````````'
		p ships 
	end

	def find_orientation(start_point)

	end

end