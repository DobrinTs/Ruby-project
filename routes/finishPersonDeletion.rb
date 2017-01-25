post '/finish_person_deletion' do
  person = Person.find_by(name: params[:person_name])
  person.participations.destroy
  person.destroy

  redirect '/people'
end
