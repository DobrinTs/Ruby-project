get '/movies' do
  # @users = User.all
  @movies = Movie.all
  erb :movies
end
