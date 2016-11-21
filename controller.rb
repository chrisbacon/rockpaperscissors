require( 'pry-byebug' )
require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('models/game.rb')

get '/:rules/:throw' do 
  game = Game.new( params[:rules] )

  @player_throw = params[:throw].downcase
  @cpu_throw = game.get_cpu_throw()
  @result = game.get_result( @player_throw )

  erb( :result )
end

get '/' do
	erb( :welcome )
end