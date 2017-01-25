post '/finish_person_deletion' do
  person = Person.find_by(name: params[:person_name])
  person.destroy

  redirect '/people'
end
