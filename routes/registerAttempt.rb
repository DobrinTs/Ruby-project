post '/register_attempt' do
  user = User.new name: params[:user_name], password: params[:password],
                  email: params[:email], rank: "user"
  user.save

  # redirect '/users'
  redirect '/'
end

# само за лична употреба
get '/users' do
  @users = User.all

  erb :users
end