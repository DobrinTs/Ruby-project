post '/register_attempt' do
  user = User.create name: params[:user_name], password: params[:password],
                  email: params[:email], rank: "user"

  # redirect '/users'
  redirect '/'
end

# get '/users' do
#   @users = User.all

#   erb :users
# end
