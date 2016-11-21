class Game
	
	attr_accessor :cpu_throw

	def initialize( ruleset )
		possible_throws = {
			'rps' => ['rock', 'paper', 'scissors'],
			'rpsls' => ['rock', 'paper', 'scissors', 'lizard', 'spock']
		}

		#throw that is the key beats throws that are in values
		rules = {
			'rps' => {
				'rock' => ['scissors'],
				'paper' => ['rock'],
				'scissors' => ['paper']
			},
			'rpsls' => {
				'rock' => ['scissors', 'lizard'],
				'paper' => ['rock', 'spock'],
				'scissors' => ['paper', 'lizard'],
				'lizard' => ['paper', 'spock'],
				'spock' => ['rock', 'scissors']
				
			}
		}

		@rules = rules[ruleset]
		@possible_throws = possible_throws[ruleset]
	end

	def get_cpu_throw()
		random_index = rand(@possible_throws.length)
		@cpu_throw = @possible_throws[random_index]
		return @cpu_throw
	end

	def get_result(player_throw)

		return 'a draw' if @cpu_throw == player_throw

		return 'you won' if @rules[player_throw].include?(@cpu_throw)

		return 'you lost'
	end
	
end