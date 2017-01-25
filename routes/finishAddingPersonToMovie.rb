post '/finish_adding_person_to_movie/:name' do
  @movie = Movie.find_by(name: params[:name])
  @person = Person.find_by(name: params[:person_name])

  unless @person
    @person = Person.create name: params[:person_name]
  end

  # @movie.participations << @person.id

  @movie.participations.create(:person_id => @person.id,
                               :role => params[:role])

  redirect "movie/#{@movie.name}"
end
