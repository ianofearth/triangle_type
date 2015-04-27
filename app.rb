require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')
also_reload('./lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  test_triangle = Triangles.new(params.fetch('side1'), params.fetch('side2'), params.fetch('side3'))
  @result = test_triangle.triangle_type()
  erb(:result)
end
