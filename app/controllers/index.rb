get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/urls' do
  @url = Url.create(long_url: params[:long_url])
  @short_url = @url.short_url

  erb :short_url
end

get '/:short_url' do
  p @url = Url.where(short_url: params[:short_url]).first
  redirect @url.long_url
end