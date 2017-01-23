post '/lostpassword' do
  if user = User.find_by( name: params[:user_name])
    flash[:success] = "Your password is: #{user.password}"
  else
    flash[:error] = "No such User"
  end
  redirect '/'
end
