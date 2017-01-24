get '/movie/:name' do
  # @string = params[:movie]
  @movie = Movie.find_by(name: params[:name])

  # @movie = params[:movie]
  erb :movie, :locals => {:name => params[:name]}
end
