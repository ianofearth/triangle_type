require('sinatra')
require('sinatra/reloader')
require('.lib/triangles')
also_reload('./lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @result =
  erb(:result)
end
