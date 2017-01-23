get '/' do
  # @users = User.all
  @people = Person.all
  erb :index
end

