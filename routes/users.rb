# само за лична употреба
get '/users' do
  @users = User.all

  erb :users
end
