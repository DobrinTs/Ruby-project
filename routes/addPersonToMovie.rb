get '/add_person_to_movie/:name' do
  @movie = Movie.find_by(name: params[:name])

  erb :addPersonToMovie
end
