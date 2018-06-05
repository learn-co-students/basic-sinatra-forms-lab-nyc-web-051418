require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    get '/' do
      "Hello World"
    end

    get '/newteam' do
      erb :newteam
    end

    post '/team' do

      # @position_array = [] ###Not formmated properly
      @formatted_position_array = ["Team Name:", "Coach:", "Point Guard:", "Shooting Guard:", "Power Forward:", "Small Forward:", "Center:"]
      @player_array = []

      params.each do |position, player|
        #@position_array << position won't be formatted properly
        @player_array << player
      end

      erb :team
    end

end
