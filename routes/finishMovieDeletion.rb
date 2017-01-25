post '/finish_movie_deletion' do
  # movie = Movie.create name: params[:movie_name], year: params[:year],
  #                   length: params[:length], description: params[:description],
  #                   genre: params[:genre], rating: 0, number_of_votes: 0

  movie = Movie.find_by(name: params[:movie_name])
  movie.participations.destroy
  movie.destroy

  redirect '/movies'
end
