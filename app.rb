# frozen_string_literal: true

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
    @game.players
    erb(:play)
  end

  post '/score' do
    @game = $game
    @game.add_score(
      params[:player_name], 
      params[:bid].to_i, 
      params[:tricks].to_i)
    redirect '/play'
  end
end
