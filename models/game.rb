class Game
	
	attr_accessor :cpu_move

	def initialize( rules )
		moves = {
			'rps' => ['rock', 'paper', 'scissors'],
			'rpsls' => ['rock', 'paper', 'scissors', 'lizard', 'spock']
		}

		losers = {
			'rps' => {
				'rock' => ['scissors'],
				'paper' => ['rock'],
				'scissors' => ['paper']
			},
			'rpsls' => {
				'rock' => ['scissors', 'lizard'],
				'paper' => ['rock', 'spock'],
				'scissors' => ['paper', 'lizard'],
				'lizard' => ['spock', 'paper'],
				'spock' => ['rock', 'scissors']
				
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

		return 'you won' if @losers[player_move].include?(@cpu_move)

		return 'you lost'
	end
	
end