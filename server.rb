require 'sinatra'

get '/' do
  redirect to('/home')
end

get '/home' do
  erb :index
end


get '/gallery' do
  redirect to('/portfolio')
end

get '/portfolio' do
  erb :gallery
end

get '/about_me' do
  @skills = ['shuffling', 'ilvl 380 holy priest', 'funny', 'can eat a lot']
  @interests = ['techno', 'women (+ points if youre japanese)', 'games']
  erb :about
end

get '/favourites' do
  @fav_links = ['www.youtube.com', 'www.reddit.com', 'www.netflix.com', 'www.totallysfwsite.com']
  erb :favourites
end
