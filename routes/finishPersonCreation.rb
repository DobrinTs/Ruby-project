post '/finish_person_creation' do
  # movie = Movie.create name: params[:movie_name], year: params[:year],
  #                   length: params[:length], description: params[:description],
  #                   genre: params[:genre], rating: 0, number_of_votes: 0

  person = Person.find_by(name: params[:person_name])
  if person
    person.update nationality: params[:nationality],
                  birthday: params[:birthday]
    flash[:success] = 'Данните за човека бяха редактирани успешно!'
  else
    person = Person.new name: params[:person_name],
                       nationality: params[:nationality],
                       birthday: params[:birthday]

    if person.save
      flash[:success] = 'Човекът беше записан успешно!'
    else
      flash[:error] = "Данните съдържат грешки: #{person.errors.full_messages.to_sentence}"
    end
  end

  redirect '/people'
end
