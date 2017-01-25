post '/finish_adding_person_to_movie/:name' do
  @movie = Movie.find_by(name: params[:name])
  @person = Person.find_by(name: params[:person_name])

  unless @person
    @person = Person.create name: params[:person_name]
  end

  @movie.people << @person

  redirect "movie/#{@movie.name}"
end
