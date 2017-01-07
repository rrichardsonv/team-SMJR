get '/sessions/new' do
  erb :"/users/sessions"
end

post '/sessions' do
  user = User.find_by(:email => params[:user][:email])
  if User.authenticate(params[:user][:email], params[:user][:password]) != nil
    session[:user_id] = user.id
    redirect '/'
  else
    @errors = user.errors.full_messages
    erb :"/users/sessions"
  end
end

delete '/sessions' do
  session.delete(:user_id)
  redirect "/"
end
