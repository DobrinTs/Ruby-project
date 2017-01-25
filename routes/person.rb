get '/person/:name' do
  @person = Person.find_by(name: params[:name])

  erb :person, :locals => {:name => params[:name]}
end
