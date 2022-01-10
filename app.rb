require 'sinatra/base'
require 'sinatra/reloader'
require 'capybara'
require './lib/game'

class OhHellScorer < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    $game = Game.new
    erb(:index)
  end

  post '/player' do
    $game.add_player(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @game = $game
    p @game.players
    erb(:play)
  end
end