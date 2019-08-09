get '/' do
  if no_authentication?
    erb :"landing"
  else
    "Hi, #{session[:name]}.  <img style='width:60px; border-radius:50%;' src='#{session[:picture]}' >"
  end
end

get '/account' do
  @user = User.first # later this will be the logged in user
  erb :"account"
end

put '/account' do
  @user = User.first # later this will be the logged in user
  # Run update of the account
  # You will have PARAMS (from the user)
  
  erb :"account"
end


get '/login' do
  if no_authentication?
    erb :"login"
  else
    "Hi, #{session[:name]}.  <img style='width:60px; border-radius:50%;' src='#{session[:picture]}' >"
  end
end

post '/login' do
  if no_authentication?
    erb :"login"
  else
    "Hi, #{session[:name]}.  <img style='width:60px; border-radius:50%;' src='#{session[:picture]}' >"
  end
end