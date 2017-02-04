post '/finish_search_movie' do
  # "{#{params[:movie_name]}#{params[:year]}#{params[:length]}#{params[:genre]}#{params[:description]}}"

  @query = {}
  @query[:name] = params[:movie_name] unless params[:movie_name] == ""

  @query[:genre] = params[:genre] unless params[:genre] == ""

  @query[:description] = params[:description] unless params[:description] == ""

  @query[:length] = params[:length] unless params[:length] == ""

  @query[:year] = params[:year] unless params[:year] == ""

  @results = Movie.where(@query).all
  # по някаква причина map! дава грешка
  @results = @results.map do |movie|
    [movie.name, movie.calculate_rating]
  end

  @results.sort! { |movie1, movie2| movie2[1] <=> movie1[1] }

  erb :finishSearchMovie
end
