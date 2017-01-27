post '/finish_search_movie_by_person' do
  # "{#{params[:movie_name]}#{params[:year]}#{params[:length]}#{params[:genre]}#{params[:description]}}"

  @person = Person.find_by(name: params[:person_name])
  @results = @person.movies

  # по някаква причина map! дава грешка
  @results = @results.map do |movie|
              [movie.name, movie.calculate_rating]
            end

  @results.sort! { |movie1, movie2| movie2[1] <=> movie1[1] }

  erb :finishSearchMovieByPerson
end
