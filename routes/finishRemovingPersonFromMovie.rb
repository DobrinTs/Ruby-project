post '/finish_removing_person_from_movie/:name' do
  @movie = Movie.find_by(name: params[:name])
  @person = Person.find_by(name: params[:person_name])

  if @person
    @movie.people.destroy @person
  end

  redirect "movie/#{@movie.name}"
end
