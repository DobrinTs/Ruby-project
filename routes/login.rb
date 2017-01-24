post '/login' do
  user = User.find_by( name: params[:user_name])
  unless user
    flash[:error] = "No such User"
    redirect '/'
  end

  if user.password == params[:password]
    redirect '/movies'
  else
    flash[:error] = "Incorrect password"
    redirect '/'
  end
end
