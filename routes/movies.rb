get '/movies' do
  @movies = Movie.all

  erb :movies
end
