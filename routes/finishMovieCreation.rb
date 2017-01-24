post '/finish_movie_creation' do
  movie = Movie.create name: params[:movie_name], year: params[:year],
                    length: params[:length], description: params[:description],
                    genre: params[:genre], rating: 0, number_of_votes: 0

  redirect '/movies'
end
