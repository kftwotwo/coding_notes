get '/login' do
  authenticate!
  redirect '/'
end

get '/logout' do
  logout!
  redirect '/'
end

get '/lines' do
  erb(:lines)
end

get '/ruby' do
  erb(:ruby)
end


get '/auth/callback' do
  redirect "/" if handle_github_callback
  halt 401, "Unable to Authenticate Via GitHub"
end
