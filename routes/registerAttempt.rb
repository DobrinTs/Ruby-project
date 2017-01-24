post '/register_attempt' do
  if User.find_by name: params[:user_name]
    flash[:error] = "Потребителското име е заето"
  else
    user = User.new name: params[:user_name], password: params[:password],
                    email: params[:email], rank: "user"
    user.save
    flash[:success] = 'Регистрацията е завършена успешно!'
  end

  redirect '/'
end
