require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/newteam' do
    @name = params[:name]
    @coach = params[:coach]
    @pg = params[:pg]
    @sg = params[:sg]
    @pf = params[:pf]
    @sf = params[:sf]
    @c = params[:c]

    erb :team
  end



  # <p>Team Name: <input type="text" name="name"></p>
  # <p>Coach: <input type="text" name="coach"></p>
  # <p>Point Guard: <input type="text" name="pg"></p>
  # <p>Shooting Guard: <input type="text" name="sg"></p>
  # <p>Small Forward: <input type="text" name="pf"></p>
  # <p>Power Forward: <input type="text" name="sf"></p>
  # <p>Center: <input type="text" name="c"></p>

end
