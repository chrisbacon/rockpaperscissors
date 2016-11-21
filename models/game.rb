class Game
	def initialize( rules )
		moves = {
			'rps' => ['Rock', 'Paper', 'Scissors']
		}

		losers = {
			'rps' => {
				'Rock' => 'Scissors',
				'Scissors' => 'Paper',
				'Paper' => 'Rock'
			}
		}

		@losers = losers[rules]
		@moves = moves[rules]
	end

	def get_cpu_move()
		random_index = rand(@moves.length)
		@cpu_move = @moves[random_index]
		return @cpu_move
	end

	def get_result(player_move)

		return 'a draw' if @cpu_move == player_move

		return 'you won' if @cpu_move == @losers[player_move]

		return 'you lost'
	end
	
end