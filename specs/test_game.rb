require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../models/game')

class TestGame < Minitest::Test

	def setup()
		@rps = Game.new('rps')
		
		@rpsls = Game.new('rpsls')
	end

	def test_get_result_rps__rock
		@rps.cpu_throw = 'rock'

		assert_equal('a draw', @rps.get_result('rock'))
		assert_equal('you won', @rps.get_result('paper'))
		assert_equal('you lost', @rps.get_result('scissors'))
	end

	def test_get_result_rps__paper
		@rps.cpu_throw = 'paper'

		assert_equal('a draw', @rps.get_result('paper'))
		assert_equal('you won', @rps.get_result('scissors'))
		assert_equal('you lost', @rps.get_result('rock'))

	end

	def test_get_result_rps__scissors
		@rps.cpu_throw = 'scissors'

		assert_equal('a draw', @rps.get_result('scissors'))
		assert_equal('you won', @rps.get_result('rock'))
		assert_equal('you lost', @rps.get_result('paper'))
	end

	def test_get_result_rpsls__rock
		@rpsls.cpu_throw = 'rock'

		assert_equal('a draw', @rpsls.get_result('rock'))
		assert_equal('you won', @rpsls.get_result('paper'))
		assert_equal('you lost', @rpsls.get_result('scissors'))
		assert_equal('you won', @rpsls.get_result('spock'))
		assert_equal('you lost', @rpsls.get_result('lizard'))
	end

	def test_get_result_rpsls__scissors
		@rpsls.cpu_throw = 'scissors'

		assert_equal('a draw', @rpsls.get_result('scissors'))
		assert_equal('you won', @rpsls.get_result('rock'))
		assert_equal('you lost', @rpsls.get_result('paper'))
		assert_equal('you won', @rpsls.get_result('spock'))
		assert_equal('you lost', @rpsls.get_result('lizard'))
	end

	def test_get_result_rpsls__paper
		@rpsls.cpu_throw = 'paper'

		assert_equal('a draw', @rpsls.get_result('paper'))
		assert_equal('you won', @rpsls.get_result('scissors'))
		assert_equal('you lost', @rpsls.get_result('rock'))
		assert_equal('you won', @rpsls.get_result('lizard'))
		assert_equal('you lost', @rpsls.get_result('spock'))
	end

	def test_get_result_rpsls__spock
		@rpsls.cpu_throw = 'spock'

		assert_equal('a draw', @rpsls.get_result('spock'))
		assert_equal('you won', @rpsls.get_result('paper'))
		assert_equal('you lost', @rpsls.get_result('rock'))
		assert_equal('you won', @rpsls.get_result('lizard'))
		assert_equal('you lost', @rpsls.get_result('scissors'))
	end

	def test_get_result_rpsls__lizard
		@rpsls.cpu_throw = 'lizard'

		assert_equal('a draw', @rpsls.get_result('lizard'))
		assert_equal('you won', @rpsls.get_result('rock'))
		assert_equal('you lost', @rpsls.get_result('paper'))
		assert_equal('you won', @rpsls.get_result('scissors'))
		assert_equal('you lost', @rpsls.get_result('spock'))
	end




end