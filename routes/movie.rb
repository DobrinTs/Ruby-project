get '/movie/:name' do
  @movie = Movie.find_by(name: params[:name])

  erb :movie, locals: {name: params[:name]}
end
