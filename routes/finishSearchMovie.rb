post '/finish_search_movie' do
  # "{#{params[:movie_name]}#{params[:year]}#{params[:length]}#{params[:genre]}#{params[:description]}}"

  @query = {}
  unless params[:movie_name] == ""
    @query.merge!({name: params[:movie_name]})
  end

  unless params[:genre] == ""
    @query.merge!({genre: params[:genre]})
  end

  unless params[:description] == ""
    @query.merge!({description: params[:description]})
  end

  unless params[:length] == ""
    @query.merge!({length: params[:length]})
  end

  unless params[:year] == ""
    @query.merge!({year: params[:year]})
  end

  @results = Movie.where(@query).all
  # по някаква причина map! дава грешка
  @results = @results.map do |movie|
              [movie.name, movie.calculate_rating]
            end

  @results.sort! { |movie1, movie2| movie2[1] <=> movie1[1] }

  erb :finishSearchMovie
end
