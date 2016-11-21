require( 'pry-byebug' )
require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('models/game.rb')

get '/:rules/:move' do 
  game = Game.new( params[:rules] )

  @player_move = params[:move]
  @cpu_move = game.get_cpu_move()
  @result = game.get_result( @player_move )
  
  erb( :result )
end
