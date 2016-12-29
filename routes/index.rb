get '/' do
  # @users = User.all
  # @movies = Movie.all
  erb :index
end

post '/lostpassword' do
  if user = User.find_by( username: params[:user_name])
    flash[:success] = user.username
  else
    flash[:error] = "No such User"
  end
  redirect '/'
end
