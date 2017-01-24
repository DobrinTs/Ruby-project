get '/movie/:name/:rating' do
  @movie = Movie.find_by(name: params[:name])
  @movie.rating += params[:rating].to_f
  @movie.number_of_votes += 1
  @movie.save

  redirect "/movie/#{@movie.name}"
end
