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

  @results = Movie.where(@query)

  erb :finishSearchMovie
end
