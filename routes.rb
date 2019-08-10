get '/' do
  if no_authentication?
    erb :"login"
  else
    "Hi, #{session[:name]}.  <img style='width:60px; border-radius:50%;' src='#{session[:picture]}' >"
  end
end

get '/account' do
  @user = User.first # later this will be the logged in user
  erb :"account"
end

get '/account/new' do
  @user = User.first # later this will be the logged in user
  erb :"new_account"
end

# post '/account' do
#   @user = User.first # later this will be the logged in user
#   # Run update of the account
#   # You will have PARAMS (from the user)
#   @user = User.new 
#   @allergies = Allergy.new 
#   @symptoms = Visit.new
#   erb :"account"
# end



# put '/account' do
#   @user = User.first # later this will be the logged in user
#   # Run update of the account
#   # You will have PARAMS (from the user)
#   # params[:dob], params[:symptoms]
#   # <input name="dob" type="date" />
#   #

#   # ActiveRecord -> Ruby library that gives access to DB
#   # User.find()
#   # @user.date_of_birth = Date.parse(params[:dob])
#   # @user.save

#   # params[:alleriges] = [ 'pollen', 'mites']
#   # allergies = params[:allergies].map do |potato|
#   #    Allergy.find_by(name: potato)
#   # end

#   # @user.allergies << allergies


#   erb :"account"
# end

# https://www.nytimes.com/2019/08/10/style/self-care/when-did-self-help-become-self-care.html?action=click&module=Editors%20Picks&pgtype=Homepage
# No domain
# get '/:year/:month/:day/:category/:subcategory/:title' do
#   #Did this person come here from the home page? params[:action]
#   @article = Article.find_by(year: params[:year], month: params[:month], day: parms[:day], title: params[:title])
#   erb :"article"
# end



# Conventions

# GET requests -> send info only
# POST request -> new records and it packages up all inputs in a form as params instead of putting params in the url
# PUT/PATCh requests -> editing records and it also packages up inputs ina  form as params, like POST requests