get '/remove_person_from_movie/:name' do
  @movie = Movie.find_by(name: params[:name])

  erb :removePersonFromMovie
end
