post '/finish_movie_creation' do
  # movie = Movie.create name: params[:movie_name], year: params[:year],
  #                   length: params[:length], description: params[:description],
  #                   genre: params[:genre], rating: 0, number_of_votes: 0

  movie = Movie.find_by(name: params[:movie_name])
  if movie
    movie.update year: params[:year], length: params[:length],
                 description: params[:description], genre: params[:genre]
  else
    movie = Movie.new name: params[:movie_name], year: params[:year],
                    length: params[:length], description: params[:description],
                    genre: params[:genre], rating: 0, number_of_votes: 0
  end

  if movie.save
    flash[:success] = 'Филмът беше записан успешно!'
  else
    flash[:error] = "Филмът съдържа грешки: #{movie.errors.full_messages.to_sentence}"
  end

  redirect '/movies'
end
